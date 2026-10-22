# Device verification - 22 October 2026

Source implementation commit: `93c4a6c` (subsequent documentation only).
Installed package: `io.freemytv`, version code 3 / `1.2-hybrid`.
Installed APK SHA-256: `a834e27b43ed97096ad398750a58b20bd9eccf225781fbbd02c32fed6671367d`.
Device: Fire OS 8 / Android 11, ARM32. The device APK digest matches the local signed build.

Verified on the TV:

- Netflix shows two explicit shared Continue Watching entries. Up enters the carousel, Right centres the next entry and updates its blurred ambient background; Down returns to the same dock app.
- Selecting Prime shows its own observed playback entry and progress. Its available saved artwork is smaller than Netflix artwork and is not stretched across the hero.
- The original Free My TV dock order, dimensions, layout function and spacing remain unchanged. Glass styling follows the theme.
- Both the remote Menu button and the top-right gear open the compact tvOS control layout. Its Settings tile opens full settings.
- Manual Light changes the controls and ambient background to the light appearance. Automatic is restored and marked On; at the tested evening time it selects dark appearance.
- StandBy opens with the recovered tvOS analog clock renderer on the left, a live digital readout underneath, and the recovered calendar renderer on the right.
- The movie/photo screensaver source, standalone Dream service, backdrop engine and weather/day-night data code match their pre-hybrid SHA-256 values. The configured screensaver component remains unchanged. Original automatic idle activation was not re-timed during this check.
- HomeOnFire accessibility mapping and the existing notification listener remain enabled. No crash appeared in the checked app/runtime log window.
- Twelve host history-policy checks and seventeen Indian AQI checks passed. Full Android build and signing succeeded.

Backup: the exact original APK remains local. A same-signature version-4 restore APK was also built from the preserved original source so restoration does not require uninstalling or clearing preferences. It was verified, not installed. Its SHA-256 is `ce8e4318096a805f398322c3337f28bd050bd9205e0d1489868ebc7d94855645`.

Screenshots and personal playback evidence remain local under `tv-audit/hybrid-20261022`, outside this repository. Credentials, signing keys and APKs are not committed. This repository remains private.
