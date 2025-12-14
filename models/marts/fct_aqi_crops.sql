with aqi as (
  select * from {{ ref('stg_aqi') }}
),
crops as (
  select * from {{ ref('stg_crops') }}
)

select
  aqi.state,
  aqi.ts_utc,
  aqi.latitude,
  aqi.longitude,
  aqi.pm2_5,
  aqi.pm10,
  aqi.no2,
  aqi.co,
  aqi.o3,
  aqi.so2,
  crops.crop,
  crops.crop_year,
  crops.season,
  crops.crop_yield
from aqi
left join crops
  on aqi.state = crops.state
