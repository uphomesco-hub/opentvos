# OpenTVOS 1.2.2 verification — 22 October 2026

The maintained `main` app is `hybrid/`, Android package `io.freemytv`, public label OpenTVOS, version code **10**, version **1.2.2**. The exact final key-free APK was installed on the Xiaomi Fire TV (Fire OS 8 / Android 11, ARM32); its installed SHA-256 was read back and matched the release file. Home was left open before GitHub publication, and subsequent work did not operate the TV.

## Current changes and checks

- White floating wordmarks, the original dock geometry and 20% focus growth, brand-colour focus glow and bare top-right icons are now the main design. Safe current screenshots are in `docs/screenshots/`.
- Removed the 15-title and 14-day retention cutoffs. Completed titles remain available. Readable TV-app playback sessions and Watch Next CONTINUE entries join explicit Netflix Continue Watching notifications. No private account-wide history is imported, no recommendations become history, and old discarded records cannot be recovered.
- A signed temporary instrumentation harness injected **210 completed records across three app packages**, aged them over a year, persisted them, then ran again in a fresh process. Both seed and restore phases passed 425 assertions; cleanup passed and retained the pre-existing archive. All fixtures and the temporary test package were removed. Artwork residency stayed at eight bitmaps; background residency stays at three. Metadata and disk artwork still consume storage as history grows.
- **22 host history/artwork-policy checks**, **8 Prime artwork parser checks** (including a real public Prime title page), **17 Indian AQI checks**, and **10 control-icon geometry checks** passed. The old retention implementation failed the new year-old-history regression before the fix.
- Prime's real landscape hero is selected from its public title page instead of the tiny `og:image` poster. The TV fetched a 1440-pixel-wide source and saved a bounded 1280×720 image. Netflix retained its original 871×490 published background: card sharpness uses actual display/card dimensions, so it is no longer incorrectly blurred by a fixed 900-pixel threshold. Actual Netflix and Prime Home cards were visually inspected. Truly tiny images use a full-size soft backdrop instead of a small inset; missing original detail is not reconstructed.
- The cinematic screensaver uses saved watched-title artwork without TMDB/Watchmode keys. The current TV showed successive Netflix slides; Prime artwork was also verified in the same renderer. Pan, zoom, crossfade, title/caption and clock remain. Original source resolution still limits fullscreen sharpness. Tiny icons and portrait posters are excluded.
- With no suitable image, the screensaver embeds the same StandBy clock/calendar renderer, including digital time. The installed `DreamView` no-image branch was rendered on the device and visually inspected. Aurora is no longer the fallback. This branch test used a temporary signed test harness; it did not erase real history.
- **35 live Control Centre/navigation assertions passed on the v1.2.2 build**, covering repeated StandBy → Back → immediate arrows, icon/caption centring, Light/Dark/Automatic, profile, settings, screensaver preview and Menu/gear entry. The final follow-up only widened screensaver eligibility to include Netflix's 871-pixel backgrounds; its slideshow/exit was then checked separately. No network, Bluetooth or native setting configuration was changed. The earlier 21 native destination checks are recorded below; they were not repeated for this artwork-only follow-up.
- Android's static Home launch-window background is now black. Warm and cold Home-activity entries were recorded and their resumed component verified. Analysis of 934 recorded frames found no near-fullscreen white frame. This does not establish every possible physical-remote/OEM-helper transition; no helper or factory launcher setting was changed.

## Final artifact

- File: `OpenTVOS-v1.2.2.apk`
- Logical size: **1,257,454 bytes** (1.26 MB decimal / 1.20 MiB); one APK, no native libraries.
- SHA-256: `0bb3353a7505783e894c8adee70f289bca7855c6ef2f433d36d05590c2d13c2d`
- Signer SHA-256: `bbbadba6045bcf0bbc5beebbd7745abe4d53056d7bd1c93b0fe3cbbadb9ef76a`
- Public build uses isolated blank catalogue credentials. Every uncompressed APK entry was scanned against configured private credentials; none was included. Signing verification passed. Private API configuration, signing keys, playback screenshots, device dumps and recordings are excluded from Git.

The package remains small, but there is no new comparative performance benchmark for 1.2.2. Historical 1.2.1 performance measurements below should not be read as fresh measurements of this build. Testing covers this device and the named flows, not all streaming-app metadata, all firmware, overnight idle behaviour or the ability to import private provider histories.

---

# Earlier 1.2.1 verification — 22 October 2026

Core implementation: `665026a`, followed by native settings routing fix `3be5dc2`. Package `io.freemytv`, final version code **6**, version **1.2.1-hybrid**. Tested on a Xiaomi Fire TV running Fire OS 8 / Android 11, ARM32, with an authorised wireless ADB connection.

## Automated checks

- **35 live device assertions passed** on the exact API-key-free public version-6 APK (also passed on the preceding version-5 private build): repeated StandBy → Back → immediate Right; all Control Centre destinations; measured focused icon/button/caption centres; manual Light and restoration of Automatic; Appearance/theme navigation; StandBy launched from settings; availability of all five layouts; avatar left/right/select refresh; profile and settings return focus; screensaver-preview return; Menu and gear entry.
- **12 history-policy checks**, **17 estimated Indian AQI checks** and **10 actual vector artwork geometry checks** passed. Java compilation, resource packaging, DEX generation, APK alignment and signing succeeded.
- The original StandBy return test failed before the focus fixes and passed after them. Local before/after videos were inspected frame by frame: the gear opening no longer scales the entire fullscreen background out of a small rectangle; Menu and gear both retain complete blur while the panel opens.
- Five protected original source hashes match the pre-hybrid snapshot: `Screensaver.java`, `ScreensaverAlone.java`, `DreamView.java`, `Backdrop.java`, `HomeData.java`. The dock layout geometry is preserved.

## Native settings and extended checks

**21 native destination/return assertions passed on final version 6.** Unlike simply checking that another activity opened, `tests/device_native_settings.py` verifies specific destination components, freshly captured UI hierarchy, absence of the unsupported-action resolver and the actual settings-grid labels. It checks Wi-Fi, Bluetooth, Inputs, Display, Sound, HDMI, system screensaver options, remote/accessory pairing and return focus.

The first broad traversal exposed two real integration problems: Bluetooth silently fell back to About; Display reached a resolver with no permitted app. Fire OS does not implement several Android settings intents, and protects Display/Audio/HDMI handlers with signature permissions. The final build opens native Network and Remotes & Bluetooth Devices directly. Display/Audio, Inputs and system screensaver shortcuts use the actual Fire TV settings grid with guidance. They do not silently pretend to open a protected subpage. Home configuration uses the existing helper; unavailable notification-access UI explains the one-time ADB setup.

All five StandBy layouts were selected, opened, visually inspected and returned from on the public version-6 APK: Clock & Calendar, Clock & Weather, Large Digital Clock, Analogue Clock and Calendar. Clock & Calendar was restored, with Automatic appearance retained.

Additional profile checks reached Avatar 10 and scrolled back, opened/cancelled the system photo picker and opened/cancelled name editing, preserving focus. Favourites, Continue Watching, Location & Weather, screensaver options, Remotes, Display & Sound, Apps and Default Home pages were traversed. No streaming app, network, Bluetooth pairing or OS setting was removed or reset.

Background low-memory reclamation was observed before the state/cache fix. A targeted final `am kill` attempt did not reclaim the still-bound process (PID unchanged); native-return tests passed, but forced process-death restoration is not claimed as independently re-triggered in the final run.

## Size and measured performance

| Measurement | Saved original Free My TV interface | OpenTVOS 1.2.1 hybrid |
| --- | ---: | ---: |
| Signed APK logical size | 1,223,885 bytes | 1,253,358 bytes |
| Median cold activity launch (3 runs) | 1,160 ms | 976 ms |
| Launch samples | 1,081 / 1,293 / 1,160 ms | 1,034 / 976 / 908 ms |
| Sampled home-process PSS | 156,249 KiB | 101,906 KiB |
| Sampled home-process RSS | 247,096 KiB | 188,312 KiB |

Performance samples were collected on version 5 before the final native routing-only change; the Home renderer is unchanged in version 6. The new APK is **1.25 MB decimal / 1.20 MiB**, 29,473 bytes (2.4%) larger. In these short same-TV tests it started about 16% sooner and sampled about 35% lower PSS. Cache, active artwork, network responses and Fire OS activity affect these measurements; they are not a general benchmark across TVs or a guarantee of lower whole-system memory.

For the new build, a controlled 24-key left/right navigation exercise reported 1,095 rendered frames, 8 janky frames (0.73%), median CPU frame time 5 ms and 95th percentile 11 ms. Baseline frame counters were not reset correctly, so no comparative smoothness claim is made.

The original-interface APK was opened temporarily for the baseline, then replaced with the new version 5. Private playback screenshots, raw device dumps, recordings and credentials remain outside Git.

## Public artifact

`OpenTVOS-v1.2.1.apk` is built independently with blank TMDB/Watchmode credentials; local private configuration is never read by `build_public.py`. A scan of every uncompressed APK entry against configured private credentials passed. The APK passed signature verification with the existing signing identity.

SHA-256: `08887980e40ba92af36fd216032b5c36751014a5b2ab359e558c545a4e471182`.

Core launcher features need no movie API key or launcher account. Optional TMDB movie artwork still requires personal configuration in a self-built APK. Continue Watching uses metadata published on this device and is not full streaming-account history. AQI is an estimated Indian-scale calculation, not an official live station reading.

## Test boundaries

This verification covers the named flows on one Fire TV. It does not claim every Fire OS/Android TV version, every streaming app, all possible photos, overnight idle behaviour, or every native system-setting mutation was tested. Native network/display/app settings are opened and returned from without changing their configuration. The original automatic screensaver timing and OS Home mapping are preserved.
