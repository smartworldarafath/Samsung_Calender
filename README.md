<div align="center">

<img src="assets/icon.png" width="112" alt="Samsung Calendar" />

<h1>
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/badges/title-dark.svg" />
    <img src="assets/badges/title-light.svg" alt="Samsung Calendar" />
  </picture>
</h1>

<a href="#overview"><img src="assets/badges/badge-oneui9.svg" alt="One UI 9 Port" /></a>
<a href="#compatibility-and-limits"><img src="assets/badges/badge-android.svg" alt="Android 12 to 16+" /></a>
<a href="#setup-and-permissions"><img src="assets/badges/badge-noroot.svg" alt="Root Not Required" /></a>
<a href="#how-every-feature-works"><img src="assets/badges/badge-refresh.svg" alt="120Hz Smooth Animations" /></a>
<a href="#how-every-feature-works"><img src="assets/badges/badge-sync.svg" alt="AOSP Calendar Sync" /></a>

</div>

<br />

<img src="assets/banner-showcase.png" alt="Samsung Calendar One UI 9 interface showcase" width="100%" />

<br />

## Overview

**Samsung Calendar** is ported from **Samsung One UI 9** and optimized to run smoothly on **all non-Samsung Android devices** running **Android 12 through Android 16+** without requiring root access.

Samsung's stock Calendar crashes on non-Galaxy ROMs because it queries Galaxy-exclusive database columns inside the calendar content provider, relies on closed system framework classes, and renders proprietary bitmap sprite assets. This port adapts those calls to standard Android Calendar Provider APIs, locks 120Hz frame pacing across Month, Week, Day, Year, and Agenda switches, and decodes Samsung sprite assets cleanly.

<br />

<img src="assets/banner-overview.png" alt="Samsung Calendar overview and views" width="100%" />

---

## Highlights

<table>
<tr>
<td width="33%" valign="top">

### Native One UI 9 Views
- Clean Month, Week, Day, Year, and Agenda schedule layouts
- Full light and dark theme adaptation across all sheets
- High-resolution decoded event stickers and category icons

</td>
<td width="33%" valign="top">

### Cross-OEM Calendar Sync
- Seamless read/write sync with local and Google Calendar accounts
- Automatic translation of proprietary database column queries
- Safe empty fallback for unavailable Galaxy-only providers

</td>
<td width="33%" valign="top">

### 120Hz Motion Polish
- Locked high-refresh-rate window rendering on non-Samsung panels
- Hardware-layered snapshot cross-slides between view modes
- Decelerated One UI animation curves with zero first-frame stutter

</td>
</tr>
</table>

---

## Status Legend

| Badge | Meaning |
| :--- | :--- |
| <img src="assets/badges/status-working.svg" alt="Working" /> | Works reliably on standard non-root Android 12–16+ devices. |
| <img src="assets/badges/status-os-blocked.svg" alt="OS Limited" /> | Restricted by third-party ROM background or provider policies without system privileges. |
| <img src="assets/badges/status-samsung-only.svg" alt="Samsung HW" /> | Depends on closed Samsung Galaxy companion apps or cloud services unavailable outside One UI. |

---

## How Every Feature Works

| Feature | Status | How It Works on Non-Samsung Android |
| :--- | :---: | :--- |
| **Month, Week, Day & Agenda Views** | <img src="assets/badges/status-working.svg" alt="Working" /> | Renders native One UI 9 calendar grids smoothly using standard Android view pipelines locked to your display's peak refresh rate. |
| **Google & Local Account Sync** | <img src="assets/badges/status-working.svg" alt="Working" /> | Translates Samsung provider projections dynamically onto your device's standard AOSP `CalendarContract` database and Google Calendar sync adapters. |
| **Event Creation, Recurrence & Alerts** | <img src="assets/badges/status-working.svg" alt="Working" /> | Creates, edits, and deletes single or repeating events with custom reminders stored directly inside standard Android calendar tables. |
| **Home Screen Widgets** | <img src="assets/badges/status-working.svg" alt="Working" /> | Renders Month, Countdown, and Agenda widgets natively on Pixel Launcher, OriginOS, HyperOS, ColorOS, and third-party launchers. |
| **Stickers & Category Icons** | <img src="assets/badges/status-working.svg" alt="Working" /> | Decodes bundled Samsung sprite containers into standard raster drawables so category icons appear accurately everywhere. |

---

## Compatibility and Limits

| Feature | Status | Why It Cannot Run Outside Galaxy Firmware |
| :--- | :---: | :--- |
| **Samsung Reminder App Sync** | <img src="assets/badges/status-samsung-only.svg" alt="Samsung HW" /> | Inline task checklists inside Calendar depend on Samsung's proprietary Reminder provider database unless the ported Reminder companion is installed alongside it. |
| **Galaxy Weather Forecast Strip** | <img src="assets/badges/status-samsung-only.svg" alt="Samsung HW" /> | Monthly forecast headers read Samsung's system Weather daemon content URI, which does not exist on non-Samsung OEM ROMs. |
| **Samsung Cloud Calendar Backup** | <img src="assets/badges/status-samsung-only.svg" alt="Samsung HW" /> | Direct Samsung Cloud sync requires Samsung Account system authenticators; use Google Calendar sync for multi-device backup. |

---

## Setup and Permissions

1. Download **`SamsungCalendar-OneUI9.apk`** from the [Latest Release](https://github.com/smartworldarafath/Samsung_Calender/releases/latest).
2. Install the APK on any non-Samsung Android 12–16+ phone (allow *Install unknown apps* if prompted).
3. Grant **Calendar** and **Notifications** permissions on first launch so events from Google and local accounts populate immediately.
4. On strict OEM ROMs (OriginOS, HyperOS, ColorOS), allow **Autostart / Background Activity** in App Info so upcoming event notifications fire reliably on time.
