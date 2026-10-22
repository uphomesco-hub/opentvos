# OpenTVOS

Custom TV home-screen experiments for Android TV and Fire TV.

The current interface is in **[hybrid/](hybrid/)**: a Free My TV-based home screen with its original dock geometry and cinematic screensaver, app-specific Continue Watching cards, blurred artwork backgrounds, compact tvOS-style controls, automatic Light/Dark appearance, Delhi weather and estimated Indian AQI, and analog-clock/calendar StandBy.

See the [hybrid build instructions](hybrid/README.md) and [device verification](hybrid/VERIFICATION.md). Configuration, API keys, signing keys and APK build outputs stay local and are excluded from Git.

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
