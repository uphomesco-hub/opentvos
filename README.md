# OpenTVOS

A compact Android TV / Fire TV launcher with a cinematic home screen, glass controls and app-specific Continue Watching. Fire OS or Android TV still runs underneath.

**[Download OpenTVOS v1.2.1](https://github.com/uphomesco-hub/opentvos/releases/tag/v1.2.1)** · [Build and setup](hybrid/README.md) · [Device verification](hybrid/VERIFICATION.md)

The maintained app is in **[hybrid/](hybrid/)**. It preserves Free My TV's dock and background engine and adds:

- A centred Continue Watching carousel for the selected favourite app, using playback metadata shared on this TV.
- Compact tvOS-style Control Centre, profile avatars/photo picker, remote navigation and native TV settings shortcuts.
- Light, Dark and sunrise/sunset Automatic appearance, including glass surfaces.
- Delhi weather, estimated Indian-scale AQI and local time; location is configurable.
- StandBy with an analog clock, digital time and calendar, plus four other layouts.
- The original movie/photo screensaver engine.

**No account or API key is needed for the main launcher, local Continue Watching, weather/AQI, controls or StandBy.** The downloadable APK contains no private catalogue keys. Optional TMDB movie artwork requires your own configuration when building; it is not bundled into this public release. Continue Watching is shared device history, not a complete Netflix/Prime account history; empty apps show the clock/weather fallback.

## Screenshots

Actual Fire TV captures, not mockups. Screenshots below show this release's controls, themes and default StandBy layout.

![Dark Control Centre](hybrid/docs/screenshots/controls-dark.png)
![Light Control Centre](hybrid/docs/screenshots/controls-light.png)
![Analog clock, digital time and calendar in StandBy](hybrid/docs/screenshots/standby.png)

## Install

Android 9 / API 28 or newer. Sideload the APK, then launch OpenTVOS from Apps. Installation alone does not assign the Home button. Fire TV may need a compatible Home-button helper and device-side ADB approval; available methods depend on Fire OS. Enable notification access for OpenTVOS to collect shared Continue Watching metadata. Existing streaming subscriptions/logins remain in their apps.

The application ID is `io.freemytv`. An update over another Free My TV build requires the same signing key. Back up your APK and preferences before changing installations; this repository does not install or remove packages automatically.

Source code, documentation and screenshots are public. Signing keys, personal configuration, API credentials and private playback evidence are excluded. Release APKs are attached to GitHub Releases.

## Earlier tvOS-based experiment

The root source and build script below preserve the earlier standalone experiment. They are separate from the current `io.freemytv` hybrid.

Maintainable modifications of the supplied tvOS Launcher 0.5 beta. Keeps its existing hero artwork, favourite dock, app grid, glass menus and settings renderer. Fire OS continues to run underneath, as it also does with Free My TV.

## Changes

- Navigation skips invisible favourite placeholders and retries focus after layout. Empty and partly filled docks work.
- Continue Watching combines Android TV provider entries with Netflix's explicitly published Continue Watching notifications and locally observed Netflix/Prime media sessions. History is bounded to 15 titles per app and expires after 14 days.
- If no history/provider row exists for Netflix or Prime, **Discover · TVmaze** shows recent public streaming TV releases. No viewer account or API key is required. Discovery is visibly distinct from personal history, has no fake progress and does not replace real rows.
- Delhi defaults, a compact temperature / estimated Indian AQI / IST chip, and the original automatic sunset-to-sunrise theme. Native location and appearance settings remain available.
- A **Yash TV features** entry in Settings explains data sources and opens notification-access setup.
- Separate package `com.yash.tvlauncher`; both `com.sid.tvos` and `io.freemytv` remain available as backups. No app removal or OS replacement is part of this project.

## Source layout

- `src/com/sid/tvos/`: maintained Java for the new features and fixes.
- `base/`: complete decoded original resources and executable Smali base with narrow integration hooks. The class namespace remains `com.sid.tvos` so original rendering and resource identities are preserved; the installed application ID is separate.
- `reference/java/`: all 315 top-level Java files recovered from the original APK with JADX/REA. Decompiled reference code is not treated as compilable original source.
- `tools/apply_base_patches.py`: reproducible, idempotent hook installation.
- `build.py`: compile new Java, generate DEX, merge with and validate the full Smali base, run tests, optionally package/sign.
- `tests/`: focus, playback provenance/expiry, catalogue precedence/link validation, AQI averaging/cache and native theme checks, plus integration/ABI contracts.

## Build and verify

Needs Python3, a full JDK17+, Android SDK platform/build-tools (tested: Android36/build-tools36.0.0). Set `JAVA_HOME` and `ANDROID_HOME` if not in the macOS paths used by the default script. No Gradle or catalogue keys are required. Apktool 3.0.3 is downloaded only if absent and checked against its release SHA-256.

```sh
python3 build.py verify  # Java + complete merged DEX + host tests; no APK
python3 build.py apk     # same checks, then produces YashTV.apk
```

The first APK build creates a local signing key and random password under ignored `.keys/`. Preserve that directory securely for future updates. It is not committed. APKs, build outputs, local config and credentials are ignored.

After installing, launch `com.yash.tvlauncher/com.sid.tvos.MainActivity`. Previewing does not change the TV's default Home handler. Notification access is optional and must be enabled for this app once to capture playback metadata; catalogue discovery and weather do not need it. Enabling notification access does not require a streaming login or API signup. Installation/Home assignment are separate actions; the build script performs neither.

## Boundaries

Netflix's full account-wide viewing history is not exposed to this app. Only published items and future observable sessions can become local history. Expired Netflix launch actions visibly fall back to opening Netflix. Prime stable content IDs can open its Resume page; artwork/title enrichment is optional. Catalogue discovery currently covers recent **TV shows**, not a complete movie library, personalized ranking or verified Indian subscription availability. Opening a discovery card explains its source and availability, then offers an app link/search.

AQI (IN est.) is calculated from modelled pollutant concentrations using Indian averaging windows and breakpoints. It is not an official live CPCB station reading. Missing/stale data is labelled or withheld, never displayed as zero. Weather defaults to Delhi and follows changes made in native Weather settings.

See [data sources](docs/DATA-SOURCES.md), [provenance and third-party notices](docs/PROVENANCE.md), [local features](docs/LOCAL_FEATURES.md), and [debug report](docs/DEBUG-REPORT.md). The original APK base's rights are not relicensed by this repository.
