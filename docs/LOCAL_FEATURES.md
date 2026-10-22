# Local status and automatic appearance

`LocalFeatures` extends the original layout with a compact, nonfocusable line at the top left. It shows the configured city, Celsius temperature, estimated Indian AQI and the time in IST. The original artwork, dock and top-right clock remain native. The line is inserted below modal panels and below the original continue-watching heading. Its exact placement still needs visual validation on the TV after an explicitly requested APK build/install.

## Defaults and controls

- On first use, missing coordinates default to Delhi (28.6139, 77.2090), with manual location enabled. Existing location settings remain intact. Use the launcher's original Weather location settings to change the place; the AQI request follows those coordinates. No new location permission or IP-based discovery is added.
- A missing `appearance.dark_schedule` defaults to `1`, the original sunrise/sunset mode. Existing manual, solar or custom schedules remain intact. Native `DarkSchedule` and `applyDark` supply the appearance changes, including manual-override holds. Native minute ticks keep the theme current.
- The original **weather pill** visibility setting controls the new line. The original left weather pill is hidden while the new line is active to prevent duplication. The right clock is not changed.
- The added clock explicitly uses Asia/Kolkata and says IST. The native clock and native solar schedule continue to use the TV's configured timezone.

## Data and AQI meaning

Temperature comes from [Open-Meteo Weather](https://open-meteo.com/en/docs); air concentrations come from [Open-Meteo Air Quality](https://open-meteo.com/en/docs/air-quality-api), which attributes its modelled air data to the Copernicus Atmosphere Monitoring Service (CAMS). No API key is needed for this personal installation. The API receives the configured coordinates.

The label is **AQI(IN est.)**. This is an estimate made by applying Indian AQI breakpoints and averaging rules to modelled concentrations. It is not an official CPCB station measurement. The [CPCB National AQI information](https://cpcb.gov.in/National-Air-Quality-Index/) describes the national index. The pure `IndianAqi` policy is adapted from the existing Free My TV customisation; it uses 24-hour pollutant history, 8-hour CO/ozone means, and the one-hour high-ozone rule. It requires enough valid history and at least three pollutants including particulate matter. CO is converted from µg/m³ to mg/m³. Severe concentrations are displayed as `>400`, rather than inventing a precise number in an open-ended concentration band.

Requests fetch two past days and one forecast day with UTC Unix timestamps. Only completed/current hourly samples at or before now enter the calculation. Missing, invalid, duplicate-hour or old inputs do not produce a zero reading.

## Offline behaviour and resource bounds

The added fetcher uses one background executor, one in-flight request, seven-second connect/read timeouts, a response deadline and a 1 MiB response limit. It refreshes after thirty minutes and backs off failed attempts for at least five minutes. Weather and air fail independently. Cached readings aged ninety minutes are labelled **stale**; readings aged twenty-four hours are withheld. Each cache belongs to an exact configured-location key so changing the place cannot display an old city's AQI under a new name. Clock corrections invalidate future cache timestamps.

The original native weather worker still serves its original UI; this extension does not replace that worker or change any optional Android permissions.

## Verification

`JAVA_HOME=/path/to/jdk python3 tests/local/run.py` runs 51 AQI/cache policy checks and 16 checks of the preserved native theme class, using host-only preference adapters. The theme reference fixture is a copy of the recovered class and is not included in the application.

The three added runtime classes also compile against Android SDK 36 with Java 8 language/bytecode settings. Live read-only requests verified both endpoint schemas (Unix integer weather timestamps and 72 aligned hourly samples across the six expected pollutants). These checks do not establish on-TV rendering, lifecycle behaviour or release APK readiness; no APK assembly or installation is part of these checks.
