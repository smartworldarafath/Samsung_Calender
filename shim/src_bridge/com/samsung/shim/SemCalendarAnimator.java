package com.samsung.shim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;

import java.util.WeakHashMap;

public final class SemCalendarAnimator {
    private static final int MAIN_CONTAINER_ID = 0x7f0a05af;
    private static final int DRAWER_LAYOUT_ID = 0x7f0a03c8;

    private static final long VIEW_SWITCH_MS = 230L;
    private static final long ACTIVITY_ENTER_MS = 215L;
    private static final Interpolator DECEL = new PathInterpolator(0.22f, 1.0f, 0.36f, 1.0f);

    private static boolean sInstalled = false;
    private static final WeakHashMap<ViewGroup, SwitchState> SWITCH_STATES = new WeakHashMap<>();

    private SemCalendarAnimator() {
    }

    private static final class SwitchState {
        Bitmap lastRemovedBitmap;
        int lastW;
        int lastH;
        long lastRemovedAt;
        ImageView activeGhost;
        View activeIncoming;
    }

    public static void install(Application app) {
        if (app == null || sInstalled) {
            return;
        }
        sInstalled = true;
        app.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            @Override
            public void onActivityCreated(final Activity activity, Bundle savedInstanceState) {
                SemCompatBridge.applyHighRefreshRate(activity);
                if (savedInstanceState == null && shouldAnimateEntry(activity)) {
                    stageActivityEntry(activity);
                }
            }

            @Override
            public void onActivityStarted(Activity activity) {
                SemCompatBridge.applyHighRefreshRate(activity);
            }

            @Override
            public void onActivityResumed(final Activity activity) {
                SemCompatBridge.applyHighRefreshRate(activity);
                if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                    return;
                }
                try {
                    final View decor = activity.getWindow() != null ? activity.getWindow().getDecorView() : null;
                    if (decor != null) {
                        final float targetRate = resolveMaxRate(activity);
                        decor.post(new Runnable() {
                            @Override
                            public void run() {
                                if (activity.isDestroyed() || activity.isFinishing()) {
                                    return;
                                }
                                SemCompatBridge.applyHighRefreshRate(activity);
                                SemCompatBridge.boostViewTreeFrameRate(decor, targetRate);
                                if (activity.getClass().getName().endsWith(".MainActivity")) {
                                    attachMainContainerAnimator(activity, targetRate);
                                }
                            }
                        });
                    }
                } catch (Throwable ignored) {
                }
            }

            @Override
            public void onActivityPaused(Activity activity) {
            }

            @Override
            public void onActivityStopped(Activity activity) {
            }

            @Override
            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            }

            @Override
            public void onActivityDestroyed(Activity activity) {
            }
        });
    }

    private static float resolveMaxRate(Activity activity) {
        float rate = 120.0f;
        try {
            Display d = Build.VERSION.SDK_INT >= 30
                    ? activity.getDisplay()
                    : activity.getWindowManager().getDefaultDisplay();
            if (d != null) {
                Display.Mode cur = d.getMode();
                Display.Mode[] modes = d.getSupportedModes();
                if (cur != null && modes != null) {
                    for (Display.Mode m : modes) {
                        if (m.getPhysicalWidth() == cur.getPhysicalWidth()
                                && m.getPhysicalHeight() == cur.getPhysicalHeight()
                                && m.getRefreshRate() > rate) {
                            rate = m.getRefreshRate();
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return rate;
    }

    private static boolean shouldAnimateEntry(Activity activity) {
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return false;
        }
        String name = activity.getClass().getName();
        return !name.endsWith(".MainActivity")
                && !name.contains("ProxyActivity")
                && !name.contains("CoverActivity")
                && !name.contains("SignInHubActivity")
                && !name.contains("Empty");
    }

    private static void stageActivityEntry(final Activity activity) {
        try {
            final View decor = activity.getWindow() != null ? activity.getWindow().getDecorView() : null;
            if (decor == null) return;
            decor.post(new Runnable() {
                @Override
                public void run() {
                    if (activity.isDestroyed() || activity.isFinishing()) return;
                    final View content = decor.findViewById(android.R.id.content);
                    if (content == null || content.getVisibility() != View.VISIBLE) return;
                    final float shiftPx = 18.0f * activity.getResources().getDisplayMetrics().density;
                    content.setLayerType(View.LAYER_TYPE_HARDWARE, null);
                    content.setAlpha(0.0f);
                    content.setTranslationY(shiftPx);
                    content.setScaleX(0.985f);
                    content.setScaleY(0.985f);

                    ViewTreeObserver vto = content.getViewTreeObserver();
                    if (vto != null && vto.isAlive()) {
                        vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                            @Override
                            public boolean onPreDraw() {
                                try {
                                    ViewTreeObserver cv = content.getViewTreeObserver();
                                    if (cv != null && cv.isAlive()) {
                                        cv.removeOnPreDrawListener(this);
                                    }
                                } catch (Throwable ignored) {
                                }
                                content.setPivotX(Math.max(1, content.getWidth()) * 0.5f);
                                content.setPivotY(Math.max(1, content.getHeight()) * 0.5f);
                                content.animate()
                                        .alpha(1.0f)
                                        .translationY(0.0f)
                                        .scaleX(1.0f)
                                        .scaleY(1.0f)
                                        .setDuration(ACTIVITY_ENTER_MS)
                                        .setInterpolator(DECEL)
                                        .withEndAction(new Runnable() {
                                            @Override
                                            public void run() {
                                                content.setAlpha(1.0f);
                                                content.setTranslationY(0.0f);
                                                content.setScaleX(1.0f);
                                                content.setScaleY(1.0f);
                                                if (content.getLayerType() == View.LAYER_TYPE_HARDWARE) {
                                                    content.setLayerType(View.LAYER_TYPE_NONE, null);
                                                }
                                            }
                                        })
                                        .start();
                                return true;
                            }
                        });
                        content.invalidate();
                    } else {
                        content.setAlpha(1.0f);
                        content.setTranslationY(0.0f);
                        content.setScaleX(1.0f);
                        content.setScaleY(1.0f);
                        content.setLayerType(View.LAYER_TYPE_NONE, null);
                    }
                }
            });
        } catch (Throwable ignored) {
        }
    }

    private static void attachMainContainerAnimator(final Activity activity, final float targetRate) {
        final View containerView = activity.findViewById(MAIN_CONTAINER_ID);
        if (!(containerView instanceof ViewGroup)) {
            return;
        }
        final ViewGroup container = (ViewGroup) containerView;
        if (SWITCH_STATES.containsKey(container)) {
            return;
        }
        final SwitchState state = new SwitchState();
        SWITCH_STATES.put(container, state);

        final View drawer = activity.findViewById(DRAWER_LAYOUT_ID);
        if (drawer != null) {
            SemCompatBridge.boostViewTreeFrameRate(drawer, targetRate);
        }

        container.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() {
            @Override
            public void onChildViewRemoved(View parent, View child) {
                if (child == null || child instanceof ViewStub) {
                    return;
                }
                int w = child.getWidth();
                int h = child.getHeight();
                if (w <= 0 || h <= 0) {
                    return;
                }
                try {
                    if (state.lastRemovedBitmap != null && !state.lastRemovedBitmap.isRecycled()) {
                        state.lastRemovedBitmap.recycle();
                    }
                    Bitmap snap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                    Canvas c = new Canvas(snap);
                    child.draw(c);
                    state.lastRemovedBitmap = snap;
                    state.lastW = w;
                    state.lastH = h;
                    state.lastRemovedAt = android.os.SystemClock.uptimeMillis();
                } catch (Throwable t) {
                    state.lastRemovedBitmap = null;
                }
            }

            @Override
            public void onChildViewAdded(View parent, final View child) {
                if (child == null || child instanceof ViewStub) {
                    return;
                }
                SemCompatBridge.boostViewTreeFrameRate(child, targetRate);

                // Avoid animating if no prior view was replaced or stale snapshot (>600ms)
                long now = android.os.SystemClock.uptimeMillis();
                final Bitmap snap = state.lastRemovedBitmap;
                final int w = state.lastW;
                final int h = state.lastH;
                boolean hasValidSnap = snap != null && !snap.isRecycled()
                        && w > 0 && h > 0 && (now - state.lastRemovedAt) < 600L;
                state.lastRemovedBitmap = null;

                if (state.activeIncoming != null && state.activeIncoming != child) {
                    try {
                        state.activeIncoming.animate().cancel();
                        state.activeIncoming.setAlpha(1.0f);
                        state.activeIncoming.setScaleX(1.0f);
                        state.activeIncoming.setScaleY(1.0f);
                        state.activeIncoming.setTranslationY(0.0f);
                        state.activeIncoming.setLayerType(View.LAYER_TYPE_NONE, null);
                    } catch (Throwable ignored) {
                    }
                }
                if (state.activeGhost != null) {
                    try {
                        state.activeGhost.animate().cancel();
                        container.getOverlay().remove(state.activeGhost);
                    } catch (Throwable ignored) {
                    }
                    state.activeGhost = null;
                }

                if (!hasValidSnap) {
                    if (snap != null && !snap.isRecycled()) {
                        snap.recycle();
                    }
                    return;
                }

                final ImageView ghost = new ImageView(activity);
                ghost.setScaleType(ImageView.ScaleType.FIT_XY);
                ghost.setImageBitmap(snap);
                ghost.measure(
                        View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
                ghost.layout(0, 0, w, h);
                ghost.setPivotX(w * 0.5f);
                ghost.setPivotY(h * 0.5f);
                ghost.setLayerType(View.LAYER_TYPE_HARDWARE, null);
                container.getOverlay().add(ghost);
                state.activeGhost = ghost;
                state.activeIncoming = child;

                final float shiftY = 12.0f * activity.getResources().getDisplayMetrics().density;
                child.setLayerType(View.LAYER_TYPE_HARDWARE, null);
                child.setAlpha(0.0f);
                child.setScaleX(0.97f);
                child.setScaleY(0.97f);
                child.setTranslationY(shiftY);

                final Runnable runAnim = new Runnable() {
                    @Override
                    public void run() {
                        ghost.animate()
                                .alpha(0.0f)
                                .scaleX(0.975f)
                                .scaleY(0.975f)
                                .setDuration(Math.round(VIEW_SWITCH_MS * 0.78f))
                                .setInterpolator(DECEL)
                                .withEndAction(new Runnable() {
                                    @Override
                                    public void run() {
                                        try {
                                            container.getOverlay().remove(ghost);
                                        } catch (Throwable ignored) {
                                        }
                                        ghost.setImageDrawable(null);
                                        if (!snap.isRecycled()) {
                                            snap.recycle();
                                        }
                                        if (state.activeGhost == ghost) {
                                            state.activeGhost = null;
                                        }
                                    }
                                })
                                .start();

                        child.animate()
                                .alpha(1.0f)
                                .scaleX(1.0f)
                                .scaleY(1.0f)
                                .translationY(0.0f)
                                .setDuration(VIEW_SWITCH_MS)
                                .setInterpolator(DECEL)
                                .setListener(new AnimatorListenerAdapter() {
                                    private void done() {
                                        child.setAlpha(1.0f);
                                        child.setScaleX(1.0f);
                                        child.setScaleY(1.0f);
                                        child.setTranslationY(0.0f);
                                        if (child.getLayerType() == View.LAYER_TYPE_HARDWARE) {
                                            child.setLayerType(View.LAYER_TYPE_NONE, null);
                                        }
                                        if (state.activeIncoming == child) {
                                            state.activeIncoming = null;
                                        }
                                    }

                                    @Override
                                    public void onAnimationEnd(Animator animation) {
                                        done();
                                    }

                                    @Override
                                    public void onAnimationCancel(Animator animation) {
                                        done();
                                    }
                                })
                                .start();
                    }
                };

                ViewTreeObserver vto = child.getViewTreeObserver();
                if (vto != null && vto.isAlive()) {
                    vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                        @Override
                        public boolean onPreDraw() {
                            try {
                                ViewTreeObserver cv = child.getViewTreeObserver();
                                if (cv != null && cv.isAlive()) {
                                    cv.removeOnPreDrawListener(this);
                                }
                            } catch (Throwable ignored) {
                            }
                            child.setPivotX(Math.max(1, child.getWidth()) * 0.5f);
                            child.setPivotY(Math.max(1, child.getHeight()) * 0.5f);
                            runAnim.run();
                            return true;
                        }
                    });
                    child.invalidate();
                } else {
                    runAnim.run();
                }
            }
        });
    }
}
