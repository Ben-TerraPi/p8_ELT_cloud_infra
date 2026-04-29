with source as (
  select * from "postgres_db"."projet_8"."infoclimat_data"
),

-- Exploser les stations
stations_exploded as (
  select
    _airbyte_raw_id,
    _airbyte_extracted_at,
    key as station_id,
    value as hourly_data
  from source,
    lateral jsonb_each(hourly)
),

-- Exploser les enregistrements horaires pour chaque station
hourly_exploded as (
  select
    _airbyte_raw_id,
    _airbyte_extracted_at,
    station_id,
    jsonb_array_elements(hourly_data) as hourly_record
  from stations_exploded
)

select
  station_id,
  (hourly_record->>'dh_utc')::timestamp as dh_utc,
  (hourly_record->>'temperature')::float as temperature,
  (hourly_record->>'humidite')::float as humidite,
  (hourly_record->>'pression')::float as pression,
  (hourly_record->>'pluie_1h')::float as pluie_1h,
  _airbyte_extracted_at
from hourly_exploded
where hourly_record->>'dh_utc' is not null
order by station_id, dh_utc