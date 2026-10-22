# Device verification — 22 October 2026

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
