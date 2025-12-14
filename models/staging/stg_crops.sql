select
  lower(trim(state)) as state,
  trim(crop) as crop,
  cast(crop_year as int64) as crop_year,
  trim(season) as season,
  cast(yield as float64) as crop_yield
from {{ source('crops', 'raw_crop_yield') }}
where state is not null
