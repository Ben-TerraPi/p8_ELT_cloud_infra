with source as (
  select * from "postgres_db"."projet_8"."infoclimat_data"
),

stations_exploded as (
  select
    _airbyte_raw_id,
    _airbyte_extracted_at,
    key as station_id,
    value as hourly_data
  from source,
    lateral jsonb_each(hourly)
),

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
  (hourly_record->>'dh_utc')::timestamp as date_time,
  (hourly_record->>'temperature')::float as temperature_celsius,
  (hourly_record->>'pression')::float as pression_hPa,
  (hourly_record->>'humidite')::float as humidite_pourcentage,
  (hourly_record->>'point_de_rosee')::float as point_de_rosee_celsius,
  (hourly_record->>'visibilite')::float as visibilite_m,
  (hourly_record->>'vent_moyen')::float as vent_moyen_kmh,
  (hourly_record->>'vent_rafales')::float as vent_rafales_kmh,
  (hourly_record->>'vent_direction')::float as vent_direction_deg,
  (hourly_record->>'pluie_1h')::float as pluie_1h_mm,
  (hourly_record->>'pluie_3h')::float as pluie_3h_mm,
  (hourly_record->>'neige_au_sol')::float as neige_au_sol_cm,
  (hourly_record->>'nebulosite')::text as nebulosite_octats,
  (hourly_record->>'temps_omm')::text as temps_omm
from hourly_exploded
where hourly_record->>'dh_utc' is not null
order by station_id, date_time