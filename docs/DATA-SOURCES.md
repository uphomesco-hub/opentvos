# Data sources and priorities

1. Android `TvContract.WatchNextPrograms` / preview channels, when an app publishes accessible entries.
2. Netflix explicitly labelled Continue Watching notifications with their app-owned PendingIntent, plus valid Netflix/Prime playback sessions observed through Android's notification-listener permission. Data stays in private app storage; no account password/token or viewing history is sent to the catalogue API.
3. Empty service rows only: keyless public TVmaze streaming schedules for seven recent dates, global and India channels. Rows say **Discover · TVmaze**, never Continue Watching. Public release metadata cannot prove availability in the viewer's country/account. No signup/key is used, and ordinary promotions never become local watch history.

TVmaze API and attribution: https://www.tvmaze.com/api . Its metadata is CC BY-SA; the discovery details screen links the source title and licence. Existing/provider rows always take precedence over discovery.

Free My TV's old discovery implementation used TMDB trending/recent release and country/provider queries with a private TMDB key. This implementation does not bundle or reuse that key. It also does not require each viewer to create a TMDB account. A future movies/region-availability backend would be a separate opt-in service with a server-held key; none is deployed here.

Weather: https://open-meteo.com/en/docs . Pollutants: https://open-meteo.com/en/docs/air-quality-api (CAMS model data). Display: temperature plus estimated Indian AQI derived locally, 24h PM/NO2/SO2 and 8h CO/O3 averaging with sample-completeness requirements. Indian breakpoint reference: https://ies.gov.in/arthapedia/concept/national-air-quality-index . No user API key is needed for these noncommercial endpoints. Their upstream terms/rate limits still apply; background responses are bounded and cached.

Optional Prime artwork/title metadata is read from its public title page using an already observed content GTI. This is not a login or private profile-history query. No analytics or recommendation server is part of this project.
