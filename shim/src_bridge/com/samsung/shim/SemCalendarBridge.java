package com.samsung.shim;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SemCalendarBridge {
    private static final String TAG = "SemCalendarBridge";
    private static final String CAL_AUTHORITY = "com.android.calendar";

    private static final Map<String, String> CAL_ALIAS_MAP = new HashMap<>();
    private static final Set<String> KNOWN_UNSUPPORTED_CAL_COLS = Collections.synchronizedSet(new HashSet<>());
    private static final Set<String> DYNAMIC_UNSUPPORTED_CAL_COLS = ConcurrentHashMap.newKeySet();
    private static final Set<String> DYNAMIC_MISSING_AUTHORITIES = ConcurrentHashMap.newKeySet();
    private static final Set<String> DYNAMIC_MISSING_CAL_SUBPATHS = ConcurrentHashMap.newKeySet();
    private static final Map<ContentProviderOperation.Builder, Uri> BUILDER_URIS =
            Collections.synchronizedMap(new WeakHashMap<>());
    private static final Map<ContentProviderOperation.Builder, String> BUILDER_SELECTIONS =
            Collections.synchronizedMap(new WeakHashMap<>());
    private static final Map<ContentProviderOperation, String> OP_SELECTIONS =
            Collections.synchronizedMap(new WeakHashMap<>());

    private static final Pattern INVALID_COL_PAT = Pattern.compile("Invalid column\\s+([^\\s,;()]+)", Pattern.CASE_INSENSITIVE);
    private static final Pattern NO_SUCH_COL_PAT = Pattern.compile("no such column:\\s*([^\\s,;()]+)", Pattern.CASE_INSENSITIVE);
    private static final Pattern NO_COL_NAMED_PAT = Pattern.compile("has no column named\\s+([^\\s,;()]+)", Pattern.CASE_INSENSITIVE);

    private static final String[] KNOWN_MISSING_AUTHORITY_PREFIXES = new String[] {
            "com.samsung.android.app.reminder",
            "com.samsung.android.smartsuggestions",
            "com.samsung.android.mobileservice",
            "com.samsung.android.rubin",
            "com.samsung.android.stickercenter",
            "com.samsung.android.holidays",
            "com.samsung.android.forest",
            "com.samsung.android.app.aodservice",
            "com.samsung.android.app.clockpack",
            "com.samsung.android.app.deepsky",
            "com.samsung.android.app.spage",
            "com.samsung.android.samsungaccount",
            "com.samsung.android.scloud",
            "com.samsung.android.scpm",
            "com.samsung.android.scs",
            "com.samsung.android.sdk.",
            "com.samsung.android.service.",
            "com.samsung.android.email",
            "com.samsung.android.exchange",
            "com.samsung.android.honeyboard",
            "com.samsung.android.intellivoiceservice",
            "com.samsung.android.mcfds",
            "com.samsung.android.unifiedprofile",
            "com.samsung.android.visual.",
            "com.sec.knox.",
            "com.sec.android.daemonapp",
            "com.sec.android.desktopmode",
            "com.sec.android.log.",
            "com.sec.android.app.launcher",
            "com.sec.android.app.sbrowser"
    };

    private static final Set<String> MISSING_CAL_SUBPATHS = new HashSet<>(Arrays.asList(
            "TasksAccounts", "syncTasks", "TaskAndReminders", "TasksReminders",
            "Apps", "CustomCalendars", "GoogleEventSync", "GoogleEventSyncState",
            "HolidayEvents", "Holidays", "Attachment", "handwriting", "maps",
            "globalSearch", "SecBulkItemInsert"
    ));

    static {
        CAL_ALIAS_MAP.put("calendar_selected", "visible");
        CAL_ALIAS_MAP.put("sec_visible", "visible");
        CAL_ALIAS_MAP.put("sec_account_name", "account_name");
        CAL_ALIAS_MAP.put("sec_account_type", "account_type");
        CAL_ALIAS_MAP.put("sec_calendar_color", "calendar_color");
        CAL_ALIAS_MAP.put("sec_calendar_displayName", "calendar_displayName");
        CAL_ALIAS_MAP.put("sec_calendar_access_level", "calendar_access_level");
        CAL_ALIAS_MAP.put("sec_displayColor", "displayColor");
        CAL_ALIAS_MAP.put("sec_name", "name");
        CAL_ALIAS_MAP.put("secOriginalSyncId", "original_sync_id");

        String[] unsupported = new String[] {
                "secExtra1", "secExtra1Json", "secExtra2", "secExtra3", "secExtra4",
                "secExtra5", "secExtra6", "secExtra7", "secExtra8", "secExtra9", "secExtra10",
                "secExtraCal", "secExtraOthers", "secTimeStamp", "setLunar",
                "sticker_type", "sticker_ename", "sticker_id", "sticker_image",
                "sticker_info", "sticker_setting", "sticker_hidden_list",
                "secAttachment", "secSyncedBy", "secAccountColor", "secTaskColor", "secTaskColorIndex",
                "contactEventType", "availabilityStatus", "facebook_hostname",
                "phone_number", "contact_id", "contact_data_id", "contact_account_type",
                "contact_infos", "contact_name", "latitude", "longitude",
                "appsData2", "appColor", "appName"
        };
        KNOWN_UNSUPPORTED_CAL_COLS.addAll(Arrays.asList(unsupported));
    }

    // ---- Query Bridges ----

    public static Cursor query(ContentResolver cr, Uri uri, String[] projection,
                               String selection, String[] selectionArgs, String sortOrder) {
        return queryInternal(cr, uri, projection, selection, selectionArgs, sortOrder, null, null, 0);
    }

    public static Cursor query(ContentResolver cr, Uri uri, String[] projection,
                               String selection, String[] selectionArgs, String sortOrder,
                               CancellationSignal cancellationSignal) {
        return queryInternal(cr, uri, projection, selection, selectionArgs, sortOrder, null, cancellationSignal, 1);
    }

    public static Cursor query(ContentResolver cr, Uri uri, String[] projection,
                               Bundle queryArgs, CancellationSignal cancellationSignal) {
        return queryInternal(cr, uri, projection, null, null, null, queryArgs, cancellationSignal, 2);
    }

    private static Cursor queryInternal(ContentResolver cr, Uri uri, String[] projection,
                                        String selection, String[] selectionArgs, String sortOrder,
                                        Bundle queryArgs, CancellationSignal signal, int mode) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) {
            return emptyCursor(projection);
        }

        boolean isCal = isCalendarUri(uri);
        String effSel = isCal ? rewriteSqlAliases(selection, false) : selection;
        String effSort = isCal ? rewriteSqlAliases(sortOrder, true) : sortOrder;
        Bundle effArgs = (queryArgs != null) ? new Bundle(queryArgs) : null;
        if (isCal && effArgs != null) {
            if (effArgs.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
                effArgs.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                        rewriteSqlAliases(effArgs.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), false));
            }
            if (effArgs.containsKey(ContentResolver.QUERY_ARG_SQL_SORT_ORDER)) {
                effArgs.putString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER,
                        rewriteSqlAliases(effArgs.getString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER), true));
            }
        }

        Set<String> localStripped = new HashSet<>();
        for (int attempt = 0; attempt < 16; attempt++) {
            ProjectionPlan plan = isCal
                    ? buildProjectionPlan(projection, localStripped)
                    : new ProjectionPlan(projection, null, false);

            if (isCal) {
                effSel = stripUnsupportedSql(effSel, localStripped, false);
                effSort = stripUnsupportedSql(effSort, localStripped, true);
                if (effArgs != null) {
                    if (effArgs.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
                        effArgs.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                                stripUnsupportedSql(effArgs.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), localStripped, false));
                    }
                    if (effArgs.containsKey(ContentResolver.QUERY_ARG_SQL_SORT_ORDER)) {
                        effArgs.putString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER,
                                stripUnsupportedSql(effArgs.getString(ContentResolver.QUERY_ARG_SQL_SORT_ORDER), localStripped, true));
                    }
                }
            }

            try {
                Cursor raw;
                if (mode == 2) {
                    raw = cr.query(uri, plan.queryProjection, effArgs, signal);
                } else if (mode == 1) {
                    raw = cr.query(uri, plan.queryProjection, effSel, selectionArgs, effSort, signal);
                } else {
                    raw = cr.query(uri, plan.queryProjection, effSel, selectionArgs, effSort);
                }
                if (raw == null) {
                    return emptyCursor(projection);
                }
                if (plan.needsWrapper && projection != null) {
                    return new SamsungProjectionCursorWrapper(raw, projection, plan.mapIndices);
                }
                return raw;
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(uri);
                    return emptyCursor(projection);
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    localStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "query failed uri=" + uri + " msg=" + e.getMessage());
                return emptyCursor(projection);
            }
        }
        return emptyCursor(projection);
    }

    // ---- Write Bridges ----

    public static Uri insert(ContentResolver cr, Uri url, ContentValues values) {
        return insert(cr, url, values, null);
    }

    public static Uri insert(ContentResolver cr, Uri url, ContentValues values, Bundle extras) {
        if (cr == null || url == null || isKnownMissingUri(url)) {
            return null;
        }
        boolean isCal = isCalendarUri(url);
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 12; attempt++) {
            ContentValues sanitized = (isCal && values != null) ? sanitizeValues(values, extraStripped) : values;
            try {
                return (extras != null) ? cr.insert(url, sanitized, extras) : cr.insert(url, sanitized);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(url);
                    return null;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "insert failed uri=" + url + " msg=" + e.getMessage());
                return null;
            }
        }
        return null;
    }

    public static int bulkInsert(ContentResolver cr, Uri url, ContentValues[] values) {
        if (cr == null || url == null || values == null || values.length == 0 || isKnownMissingUri(url)) {
            return 0;
        }
        boolean isCal = isCalendarUri(url);
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 12; attempt++) {
            ContentValues[] sanitized = values;
            if (isCal) {
                sanitized = new ContentValues[values.length];
                for (int i = 0; i < values.length; i++) {
                    sanitized[i] = (values[i] != null) ? sanitizeValues(values[i], extraStripped) : null;
                }
            }
            try {
                return cr.bulkInsert(url, sanitized);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(url);
                    return 0;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "bulkInsert failed uri=" + url + " msg=" + e.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static int update(ContentResolver cr, Uri uri, ContentValues values, String where, String[] selectionArgs) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) {
            return 0;
        }
        boolean isCal = isCalendarUri(uri);
        String effWhere = isCal ? rewriteSqlAliases(where, false) : where;
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 12; attempt++) {
            ContentValues sanitized = (isCal && values != null) ? sanitizeValues(values, extraStripped) : values;
            if (isCal) {
                effWhere = stripUnsupportedSql(effWhere, extraStripped, false);
            }
            try {
                return cr.update(uri, sanitized, effWhere, selectionArgs);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(uri);
                    return 0;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "update failed uri=" + uri + " msg=" + e.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static int update(ContentResolver cr, Uri uri, ContentValues values, Bundle extras) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) {
            return 0;
        }
        boolean isCal = isCalendarUri(uri);
        Bundle effExtras = (extras != null) ? new Bundle(extras) : null;
        if (isCal && effExtras != null && effExtras.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
            effExtras.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                    rewriteSqlAliases(effExtras.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), false));
        }
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 12; attempt++) {
            ContentValues sanitized = (isCal && values != null) ? sanitizeValues(values, extraStripped) : values;
            if (isCal && effExtras != null && effExtras.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
                effExtras.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                        stripUnsupportedSql(effExtras.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), extraStripped, false));
            }
            try {
                return cr.update(uri, sanitized, effExtras);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(uri);
                    return 0;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "update(Bundle) failed uri=" + uri + " msg=" + e.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static int delete(ContentResolver cr, Uri url, String where, String[] selectionArgs) {
        if (cr == null || url == null || isKnownMissingUri(url)) {
            return 0;
        }
        boolean isCal = isCalendarUri(url);
        String effWhere = isCal ? rewriteSqlAliases(where, false) : where;
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 10; attempt++) {
            if (isCal) {
                effWhere = stripUnsupportedSql(effWhere, extraStripped, false);
            }
            try {
                return cr.delete(url, effWhere, selectionArgs);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(url);
                    return 0;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "delete failed uri=" + url + " msg=" + e.getMessage());
                return 0;
            }
        }
        return 0;
    }

    public static int delete(ContentResolver cr, Uri url, Bundle extras) {
        if (cr == null || url == null || isKnownMissingUri(url)) {
            return 0;
        }
        boolean isCal = isCalendarUri(url);
        Bundle effExtras = (extras != null) ? new Bundle(extras) : null;
        if (isCal && effExtras != null && effExtras.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
            effExtras.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                    rewriteSqlAliases(effExtras.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), false));
        }
        Set<String> extraStripped = new HashSet<>();
        for (int attempt = 0; attempt < 10; attempt++) {
            if (isCal && effExtras != null && effExtras.containsKey(ContentResolver.QUERY_ARG_SQL_SELECTION)) {
                effExtras.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                        stripUnsupportedSql(effExtras.getString(ContentResolver.QUERY_ARG_SQL_SELECTION), extraStripped, false));
            }
            try {
                return cr.delete(url, effExtras);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e)) {
                    rememberMissingUri(url);
                    return 0;
                }
                String badCol = isCal ? extractBadColumn(e.getMessage()) : null;
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                    extraStripped.add(badCol.toLowerCase(Locale.US));
                    continue;
                }
                Log.w(TAG, "delete(Bundle) failed uri=" + url + " msg=" + e.getMessage());
                return 0;
            }
        }
        return 0;
    }

    // ---- Call / ApplyBatch / Observers ----

    public static Bundle call(ContentResolver cr, Uri uri, String method, String arg, Bundle extras) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) {
            return null;
        }
        try {
            return cr.call(uri, method, arg, extras);
        } catch (IllegalArgumentException | UnsupportedOperationException | SecurityException e) {
            if (isMissingProviderOrUrl(e)) {
                rememberMissingUri(uri);
            } else {
                Log.w(TAG, "call(Uri) skipped uri=" + uri + " method=" + method + " msg=" + e.getMessage());
            }
            return null;
        }
    }

    public static Bundle call(ContentResolver cr, String authority, String method, String arg, Bundle extras) {
        if (cr == null || authority == null || isKnownMissingAuthority(authority)) {
            return null;
        }
        try {
            return cr.call(authority, method, arg, extras);
        } catch (IllegalArgumentException | UnsupportedOperationException | SecurityException e) {
            if (isMissingProviderOrUrl(e)) {
                DYNAMIC_MISSING_AUTHORITIES.add(authority);
            } else {
                Log.w(TAG, "call(auth) skipped auth=" + authority + " method=" + method + " msg=" + e.getMessage());
            }
            return null;
        }
    }

    public static ContentProviderResult[] applyBatch(ContentResolver cr, String authority,
                                                     ArrayList<ContentProviderOperation> operations)
            throws RemoteException, OperationApplicationException {
        if (cr == null || operations == null || operations.isEmpty()) {
            return new ContentProviderResult[0];
        }
        if (authority != null && isKnownMissingAuthority(authority)) {
            return emptyBatchResults(operations);
        }
        boolean hasMissingOp = false;
        for (int i = 0; i < operations.size(); i++) {
            ContentProviderOperation op = operations.get(i);
            if (op != null && isKnownMissingUri(op.getUri())) {
                hasMissingOp = true;
                break;
            }
        }
        if (!hasMissingOp) {
            try {
                return cr.applyBatch(authority, operations);
            } catch (IllegalArgumentException | SQLiteException | SecurityException e) {
                if (isMissingProviderOrUrl(e) && authority != null && !CAL_AUTHORITY.equals(authority)) {
                    DYNAMIC_MISSING_AUTHORITIES.add(authority);
                    return emptyBatchResults(operations);
                }
                String badCol = extractBadColumn(e.getMessage());
                if (badCol != null && !badCol.isEmpty()) {
                    DYNAMIC_UNSUPPORTED_CAL_COLS.add(badCol);
                }
                Log.w(TAG, "applyBatch fallback auth=" + authority + " msg=" + e.getMessage());
            }
        }
        return applyBatchFallback(cr, operations);
    }

    private static ContentProviderResult[] emptyBatchResults(ArrayList<ContentProviderOperation> ops) {
        ContentProviderResult[] res = new ContentProviderResult[ops.size()];
        for (int i = 0; i < ops.size(); i++) {
            ContentProviderOperation op = ops.get(i);
            res[i] = (op != null && op.isInsert())
                    ? new ContentProviderResult(Uri.EMPTY)
                    : new ContentProviderResult(0);
        }
        return res;
    }

    private static ContentProviderResult[] applyBatchFallback(ContentResolver cr,
                                                              ArrayList<ContentProviderOperation> ops) {
        ContentProviderResult[] results = new ContentProviderResult[ops.size()];
        for (int i = 0; i < ops.size(); i++) {
            ContentProviderOperation op = ops.get(i);
            if (op == null) {
                results[i] = new ContentProviderResult(0);
                continue;
            }
            Uri u = op.getUri();
            if (isKnownMissingUri(u)) {
                results[i] = op.isInsert() ? new ContentProviderResult(Uri.EMPTY) : new ContentProviderResult(0);
                continue;
            }
            try {
                if (op.isInsert()) {
                    ContentValues cv = op.resolveValueBackReferences(results, i);
                    Uri inserted = insert(cr, u, cv);
                    results[i] = new ContentProviderResult(inserted != null ? inserted : Uri.EMPTY);
                } else if (op.isUpdate()) {
                    ContentValues cv = op.resolveValueBackReferences(results, i);
                    String[] args = op.resolveSelectionArgsBackReferences(results, i);
                    String sel = OP_SELECTIONS.get(op);
                    int updated = (sel != null || args == null) ? update(cr, u, cv, sel, args) : 0;
                    results[i] = new ContentProviderResult(updated);
                } else if (op.isDelete()) {
                    String[] args = op.resolveSelectionArgsBackReferences(results, i);
                    String sel = OP_SELECTIONS.get(op);
                    int deleted = (sel != null || args == null) ? delete(cr, u, sel, args) : 0;
                    results[i] = new ContentProviderResult(deleted);
                } else {
                    results[i] = new ContentProviderResult(0);
                }
            } catch (Throwable t) {
                Log.w(TAG, "applyBatchFallback op[" + i + "] failed uri=" + u + " msg=" + t.getMessage());
                results[i] = op.isInsert() ? new ContentProviderResult(Uri.EMPTY) : new ContentProviderResult(0);
            }
        }
        return results;
    }

    public static void registerContentObserver(ContentResolver cr, Uri uri,
                                               boolean notifyForDescendants, ContentObserver observer) {
        if (cr == null || uri == null || observer == null || isKnownMissingUri(uri)) {
            return;
        }
        try {
            cr.registerContentObserver(uri, notifyForDescendants, observer);
        } catch (IllegalArgumentException | SecurityException e) {
            if (isMissingProviderOrUrl(e)) {
                rememberMissingUri(uri);
            } else {
                Log.w(TAG, "registerContentObserver failed uri=" + uri + " msg=" + e.getMessage());
            }
        }
    }

    public static void notifyChange(ContentResolver cr, Uri uri, ContentObserver observer) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) return;
        try {
            cr.notifyChange(uri, observer);
        } catch (IllegalArgumentException | SecurityException ignored) {}
    }

    public static void notifyChange(ContentResolver cr, Uri uri, ContentObserver observer, boolean syncToNetwork) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) return;
        try {
            cr.notifyChange(uri, observer, syncToNetwork);
        } catch (IllegalArgumentException | SecurityException ignored) {}
    }

    public static void notifyChange(ContentResolver cr, Uri uri, ContentObserver observer, int flags) {
        if (cr == null || uri == null || isKnownMissingUri(uri)) return;
        try {
            cr.notifyChange(uri, observer, flags);
        } catch (IllegalArgumentException | SecurityException ignored) {}
    }

    // ---- ContentProviderOperation Builder Bridges ----

    public static ContentProviderOperation.Builder newInsert(Uri uri) {
        ContentProviderOperation.Builder b = ContentProviderOperation.newInsert(uri);
        if (uri != null) BUILDER_URIS.put(b, uri);
        return b;
    }

    public static ContentProviderOperation.Builder newUpdate(Uri uri) {
        ContentProviderOperation.Builder b = ContentProviderOperation.newUpdate(uri);
        if (uri != null) BUILDER_URIS.put(b, uri);
        return b;
    }

    public static ContentProviderOperation.Builder newDelete(Uri uri) {
        ContentProviderOperation.Builder b = ContentProviderOperation.newDelete(uri);
        if (uri != null) BUILDER_URIS.put(b, uri);
        return b;
    }

    public static ContentProviderOperation.Builder withValues(ContentProviderOperation.Builder b, ContentValues values) {
        if (b == null) return null;
        Uri u = BUILDER_URIS.get(b);
        if (values != null && (u == null || isCalendarUri(u))) {
            return b.withValues(sanitizeValues(values, null));
        }
        return b.withValues(values);
    }

    public static ContentProviderOperation.Builder withValue(ContentProviderOperation.Builder b, String key, Object value) {
        if (b == null) return null;
        Uri u = BUILDER_URIS.get(b);
        if (key != null && (u == null || isCalendarUri(u))) {
            if ("calendar_selected".equals(key) || "sec_visible".equals(key)) {
                return b.withValue("visible", value);
            }
            if (isUnsupportedCalColumn(key, null)) {
                return b;
            }
        }
        return b.withValue(key, value);
    }

    public static ContentProviderOperation.Builder withSelection(ContentProviderOperation.Builder b,
                                                                 String selection, String[] selectionArgs) {
        if (b == null) return null;
        Uri u = BUILDER_URIS.get(b);
        String outSel = selection;
        if (outSel != null && (u == null || isCalendarUri(u))) {
            outSel = rewriteSqlAliases(outSel, false);
            outSel = stripUnsupportedSql(outSel, null, false);
        }
        if (outSel != null) {
            BUILDER_SELECTIONS.put(b, outSel);
        }
        return b.withSelection(outSel, selectionArgs);
    }

    public static ContentProviderOperation build(ContentProviderOperation.Builder b) {
        ContentProviderOperation op = b.build();
        String sel = BUILDER_SELECTIONS.get(b);
        if (op != null && sel != null) {
            OP_SELECTIONS.put(op, sel);
        }
        return op;
    }

    // ---- Internal Helpers ----

    private static boolean isCalendarUri(Uri uri) {
        return uri != null && CAL_AUTHORITY.equals(uri.getAuthority());
    }

    private static boolean isOwnCalendarAuthority(String auth) {
        if (auth == null) return false;
        return auth.startsWith("com.samsung.android.calendar")
                || auth.startsWith("com.samsung.calendar.")
                || auth.startsWith("com.samsung.android.app.calendar.")
                || "com.sec.android.calendar.preference".equals(auth)
                || "com.samsung.android.chinaholiday".equals(auth);
    }

    private static boolean isKnownMissingAuthority(String auth) {
        if (auth == null || isOwnCalendarAuthority(auth)) return false;
        if (DYNAMIC_MISSING_AUTHORITIES.contains(auth)) return true;
        for (String pfx : KNOWN_MISSING_AUTHORITY_PREFIXES) {
            if (auth.startsWith(pfx)) return true;
        }
        return false;
    }

    private static boolean isKnownMissingUri(Uri uri) {
        if (uri == null) return true;
        String auth = uri.getAuthority();
        if (isKnownMissingAuthority(auth)) return true;
        if (CAL_AUTHORITY.equals(auth)) {
            List<String> segs = uri.getPathSegments();
            if (segs != null && !segs.isEmpty()) {
                String first = segs.get(0);
                if (first.startsWith("recycleBin") || MISSING_CAL_SUBPATHS.contains(first)
                        || DYNAMIC_MISSING_CAL_SUBPATHS.contains(first)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void rememberMissingUri(Uri uri) {
        if (uri == null) return;
        String auth = uri.getAuthority();
        if (auth == null) return;
        if (CAL_AUTHORITY.equals(auth)) {
            List<String> segs = uri.getPathSegments();
            if (segs != null && !segs.isEmpty()) {
                DYNAMIC_MISSING_CAL_SUBPATHS.add(segs.get(0));
            }
        } else if (!isOwnCalendarAuthority(auth)) {
            DYNAMIC_MISSING_AUTHORITIES.add(auth);
        }
    }

    private static boolean isMissingProviderOrUrl(Throwable e) {
        String msg = e.getMessage();
        if (msg == null) return false;
        return msg.contains("Unknown URL")
                || msg.contains("Unknown authority")
                || msg.contains("Failed to find provider");
    }

    private static String extractBadColumn(String msg) {
        if (msg == null) return null;
        String raw = null;
        Matcher m = INVALID_COL_PAT.matcher(msg);
        if (m.find()) {
            raw = m.group(1);
        } else {
            m = NO_SUCH_COL_PAT.matcher(msg);
            if (m.find()) {
                raw = m.group(1);
            } else {
                m = NO_COL_NAMED_PAT.matcher(msg);
                if (m.find()) {
                    raw = m.group(1);
                }
            }
        }
        if (raw == null) return null;
        int dot = raw.lastIndexOf('.');
        if (dot >= 0 && dot + 1 < raw.length()) {
            raw = raw.substring(dot + 1);
        }
        return raw;
    }

    private static boolean isUnsupportedCalColumn(String col, Set<String> extraStrippedLower) {
        if (col == null) return false;
        String lower = col.toLowerCase(Locale.US);
        if (extraStrippedLower != null && extraStrippedLower.contains(lower)) return true;
        if (KNOWN_UNSUPPORTED_CAL_COLS.contains(col)) return true;
        for (String s : DYNAMIC_UNSUPPORTED_CAL_COLS) {
            if (s.equalsIgnoreCase(col)) return true;
        }
        return false;
    }

    private static ContentValues sanitizeValues(ContentValues src, Set<String> extraStrippedLower) {
        ContentValues out = new ContentValues();
        for (String key : src.keySet()) {
            Object v = src.get(key);
            if ("calendar_selected".equals(key) || "sec_visible".equals(key)) {
                if (!src.containsKey("visible")) {
                    putObject(out, "visible", v);
                }
                continue;
            }
            if (isUnsupportedCalColumn(key, extraStrippedLower)) {
                continue;
            }
            putObject(out, key, v);
        }
        return out;
    }

    private static void putObject(ContentValues cv, String k, Object v) {
        if (v == null) cv.putNull(k);
        else if (v instanceof String) cv.put(k, (String) v);
        else if (v instanceof Integer) cv.put(k, (Integer) v);
        else if (v instanceof Long) cv.put(k, (Long) v);
        else if (v instanceof Boolean) cv.put(k, (Boolean) v);
        else if (v instanceof Byte) cv.put(k, (Byte) v);
        else if (v instanceof Short) cv.put(k, (Short) v);
        else if (v instanceof Float) cv.put(k, (Float) v);
        else if (v instanceof Double) cv.put(k, (Double) v);
        else if (v instanceof byte[]) cv.put(k, (byte[]) v);
        else cv.put(k, String.valueOf(v));
    }

    private static String rewriteSqlAliases(String sql, boolean isSortOrder) {
        if (sql == null || sql.isEmpty()) return sql;
        String s = replaceTokenOutsideQuotes(sql, "calendar_selected", "visible");
        s = replaceTokenOutsideQuotes(s, "sec_visible", "visible");
        s = replaceTokenOutsideQuotes(s, "secOriginalSyncId", "original_sync_id");
        return s;
    }

    private static String stripUnsupportedSql(String sql, Set<String> extraStrippedLower, boolean isSortOrder) {
        if (sql == null || sql.isEmpty()) return sql;
        String replacement = "NULL";
        String cur = sql;
        for (String col : KNOWN_UNSUPPORTED_CAL_COLS) {
            if (cur.indexOf(col.charAt(0)) >= 0 || cur.toLowerCase(Locale.US).contains(col.toLowerCase(Locale.US))) {
                cur = replaceTokenOutsideQuotes(cur, col, replacement);
            }
        }
        for (String col : DYNAMIC_UNSUPPORTED_CAL_COLS) {
            cur = replaceTokenOutsideQuotes(cur, col, replacement);
        }
        if (extraStrippedLower != null) {
            for (String col : extraStrippedLower) {
                cur = replaceTokenOutsideQuotes(cur, col, replacement);
            }
        }
        return cur;
    }

    private static String replaceTokenOutsideQuotes(String sql, String col, String replacement) {
        if (sql == null || sql.isEmpty() || col == null || col.isEmpty()) return sql;
        String lowerSql = sql.toLowerCase(Locale.US);
        String lowerCol = col.toLowerCase(Locale.US);
        if (!lowerSql.contains(lowerCol)) return sql;

        StringBuilder sb = new StringBuilder(sql.length());
        int n = sql.length();
        int i = 0;
        boolean inQuote = false;
        while (i < n) {
            char c = sql.charAt(i);
            if (inQuote) {
                sb.append(c);
                if (c == '\'') {
                    if (i + 1 < n && sql.charAt(i + 1) == '\'') {
                        sb.append('\'');
                        i += 2;
                        continue;
                    }
                    inQuote = false;
                }
                i++;
            } else if (c == '\'') {
                inQuote = true;
                sb.append(c);
                i++;
            } else if (isIdentStart(c)) {
                int start = i;
                while (i < n && (isIdentPart(sql.charAt(i)) || sql.charAt(i) == '.')) {
                    i++;
                }
                String tok = sql.substring(start, i);
                int dot = tok.lastIndexOf('.');
                String tail = (dot >= 0 && dot + 1 < tok.length()) ? tok.substring(dot + 1) : tok;
                if (tail.equalsIgnoreCase(col)) {
                    sb.append(replacement);
                } else {
                    sb.append(tok);
                }
            } else {
                sb.append(c);
                i++;
            }
        }
        return sb.toString();
    }

    private static boolean isIdentStart(char c) {
        return Character.isLetter(c) || c == '_';
    }

    private static boolean isIdentPart(char c) {
        return Character.isLetterOrDigit(c) || c == '_';
    }

    private static Cursor emptyCursor(String[] projection) {
        return new MatrixCursor(projection != null ? projection : new String[0]);
    }

    private static final class ProjectionPlan {
        final String[] queryProjection;
        final int[] mapIndices;
        final boolean needsWrapper;

        ProjectionPlan(String[] queryProjection, int[] mapIndices, boolean needsWrapper) {
            this.queryProjection = queryProjection;
            this.mapIndices = mapIndices;
            this.needsWrapper = needsWrapper;
        }
    }

    private static ProjectionPlan buildProjectionPlan(String[] origProj, Set<String> extraStrippedLower) {
        if (origProj == null || origProj.length == 0) {
            return new ProjectionPlan(origProj, null, false);
        }
        List<String> outCols = new ArrayList<>(origProj.length);
        int[] map = new int[origProj.length];
        boolean modified = false;

        for (int i = 0; i < origProj.length; i++) {
            String orig = origProj[i];
            if (orig == null) {
                map[i] = -1;
                modified = true;
                continue;
            }
            String alias = CAL_ALIAS_MAP.get(orig);
            String target = null;
            if (alias != null && !isUnsupportedCalColumn(alias, extraStrippedLower)) {
                target = alias;
                modified = true;
            } else if (!isUnsupportedCalColumn(orig, extraStrippedLower)) {
                target = orig;
            } else {
                modified = true;
            }

            if (target == null) {
                map[i] = -1;
            } else {
                int existingIdx = outCols.indexOf(target);
                if (existingIdx < 0) {
                    existingIdx = outCols.size();
                    outCols.add(target);
                } else {
                    modified = true;
                }
                if (existingIdx != i) {
                    modified = true;
                }
                map[i] = existingIdx;
            }
        }

        if (!modified) {
            return new ProjectionPlan(origProj, null, false);
        }
        if (outCols.isEmpty()) {
            outCols.add("_id");
        }
        return new ProjectionPlan(outCols.toArray(new String[0]), map, true);
    }

    private static final class SamsungProjectionCursorWrapper extends CursorWrapper {
        private final String[] origNames;
        private final int[] mapIndices;

        SamsungProjectionCursorWrapper(Cursor cursor, String[] origNames, int[] mapIndices) {
            super(cursor);
            this.origNames = origNames;
            this.mapIndices = mapIndices;
        }

        private int mapped(int columnIndex) {
            if (columnIndex < 0 || columnIndex >= mapIndices.length) return -1;
            return mapIndices[columnIndex];
        }

        @Override
        public int getColumnCount() {
            return origNames.length;
        }

        @Override
        public String getColumnName(int columnIndex) {
            return origNames[columnIndex];
        }

        @Override
        public String[] getColumnNames() {
            return origNames.clone();
        }

        @Override
        public int getColumnIndex(String columnName) {
            if (columnName == null) return -1;
            for (int i = 0; i < origNames.length; i++) {
                if (columnName.equalsIgnoreCase(origNames[i])) return i;
            }
            int dot = columnName.lastIndexOf('.');
            if (dot >= 0 && dot + 1 < columnName.length()) {
                String tail = columnName.substring(dot + 1);
                for (int i = 0; i < origNames.length; i++) {
                    if (tail.equalsIgnoreCase(origNames[i])) return i;
                }
            }
            return -1;
        }

        @Override
        public int getColumnIndexOrThrow(String columnName) throws IllegalArgumentException {
            int idx = getColumnIndex(columnName);
            if (idx < 0) {
                throw new IllegalArgumentException("column '" + columnName + "' does not exist");
            }
            return idx;
        }

        @Override
        public int getType(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? FIELD_TYPE_NULL : super.getType(m);
        }

        @Override
        public boolean isNull(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 || super.isNull(m);
        }

        @Override
        public byte[] getBlob(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? null : super.getBlob(m);
        }

        @Override
        public String getString(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? null : super.getString(m);
        }

        @Override
        public void copyStringToBuffer(int columnIndex, CharArrayBuffer buffer) {
            int m = mapped(columnIndex);
            if (m < 0) {
                if (buffer != null) buffer.sizeCopied = 0;
            } else {
                super.copyStringToBuffer(m, buffer);
            }
        }

        @Override
        public short getShort(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? 0 : super.getShort(m);
        }

        @Override
        public int getInt(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? 0 : super.getInt(m);
        }

        @Override
        public long getLong(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? 0L : super.getLong(m);
        }

        @Override
        public float getFloat(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? 0f : super.getFloat(m);
        }

        @Override
        public double getDouble(int columnIndex) {
            int m = mapped(columnIndex);
            return m < 0 ? 0d : super.getDouble(m);
        }
    }
}
