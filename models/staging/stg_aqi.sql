select
  lower(trim(State)) as state,
  cast(Latitude as float64) as latitude,
  cast(Longitude as float64) as longitude,
  timestamp(Timestamp) as ts_utc,
  cast(PM2_5 as float64) as pm2_5,
  cast(PM10 as float64) as pm10,
  cast(NO2 as float64) as no2,
  cast(CO as float64) as co,
  cast(O3 as float64) as o3,
  cast(SO2 as float64) as so2
from {{ source('weather', 'gsmap_rain_realtime') }}
where State is not null
