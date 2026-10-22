# Free My TV hybrid preview

This is the active `io.freemytv` home-screen fork. The repository root preserves the separate tvOS-based experiment.

## Behaviour

- Original Free My TV dock geometry, app order, navigation, lower drawer, blurred background engine, and movie/photo screensaver.
- Glass dock highlights follow Light, Dark, and the existing location-based Automatic appearance.
- Centred, horizontally browsable Continue Watching cards follow the selected dock app. Their artwork drives the original ambient background.
- Netflix entries come from explicit Continue Watching notifications; Prime entries come from playback observed on this TV. Up to 15 incomplete entries per app are retained for 14 days. Other apps appear only if they publish readable Watch Next continuation entries.
- This is observed device history, not the full streaming-account history. No recommendation is presented as a watched title. An unavailable resume action opens the app with an explanatory message.
- Original provider artwork is preferred, decoding is bounded, and small thumbnails are kept at a sensible size rather than enlarged across the hero.
- New right-side Settings and Control Centre: Light/Dark/Automatic, glass style, app shelf, local weather/AQI controls, native TV settings, and manual StandBy clock layouts. The original automatic screensaver remains separate.

## Build

Use JDK 17+, Android SDK platform 36/build-tools 36, and `bash build.sh` from this directory. Copy `config.example.properties` to `config.properties` if needed. The existing local config supplies screensaver artwork; Continue Watching needs no movie API signup. Generated settings, API keys, signing keys, output, and APKs are ignored.

Updates to an installed build require its original signing key. Do not commit that key or copy another person's key. Install with `adb install -r FreeMyTV.apk` to retain app preferences.

## Verification

Host tests: compile `WatchHistoryPolicy.java`, `IndianAqi.java`, and `tests/*.java` with javac; run both test classes in the `io.freemytv` package. Live TV verification is recorded separately after installation.

## Rollback

A local pre-hybrid APK is saved outside this repository in `tv-audit/hybrid-20261022/FreeMyTV-before-hybrid.apk`. Reinstall it with the same signing identity (allow version downgrade if the platform requires it), then open `io.freemytv/.HomeActivity`. HomeOnFire, notification access, user data, and the configured original screensaver component are preserved by this update.

Upstream Android source: https://github.com/simbasjungles/free-my-tv . Its license is preserved in LICENSE.
