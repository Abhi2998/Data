select
  state,
  date(ts_utc) as date_utc,
  round(avg(pm2_5), 2) as avg_pm25,
  round(avg(pm10), 2) as avg_pm10,
  count(*) as records
from {{ ref('stg_aqi') }}
group by 1, 2
