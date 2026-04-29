

with source as (
  select * from "postgres_db"."projet_8"."fr031024"
)

select
  _airbyte_raw_id,
  ('2024-10-03'::date + to_timestamp("Time", 'HH:MI AM')::time)::timestamp as date_time,
  (((regexp_substr("Temperature", '^[0-9.]+'))::float - 32) * (5.0/9.0))::numeric(10,1) as temperature_celsius,
  ((regexp_substr("Pressure", '^[0-9.]+'))::float * 33.8639)::numeric(10,1) as pression_hpa,
  (regexp_substr("Humidity", '^[0-9.]+'))::numeric(10,1) as humidite_pourcentage,
  (((regexp_substr("Dew_Point", '^[0-9.]+'))::float - 32) * (5.0/9.0))::numeric(10,1) as point_de_rosee_celsius,
  ((regexp_substr("Speed", '^[0-9.]+'))::float * 1.60934)::numeric(10,1) as vent_moyen_kmh,
  ((regexp_substr("Gust", '^[0-9.]+'))::float * 1.60934)::numeric(10,1) as vent_rafales_kmh,
  case upper(trim("Wind"))
    when 'NORTH' then 0.0
    when 'NNE' then 22.5
    when 'NE' then 45.0
    when 'ENE' then 67.5
    when 'EAST' then 90.0
    when 'ESE' then 112.5
    when 'SE' then 135.0
    when 'SSE' then 157.5
    when 'SOUTH' then 180.0
    when 'SSW' then 202.5
    when 'SW' then 225.0
    when 'WSW' then 247.5
    when 'WEST' then 270.0
    when 'WNW' then 292.5
    when 'NW' then 315.0
    when 'NNW' then 337.5
    else null
  end::numeric(10,1) as vent_direction_deg,
  ((regexp_substr("Precip__Rate_", '^[0-9.]+'))::float * 25.4)::numeric(10,1) as pluie_ratio_mm,
  ((regexp_substr("Precip__Accum_", '^[0-9.]+'))::float * 25.4)::numeric(10,1) as pluie_accum_mm,
  (regexp_substr("UV", '^[0-9.]+'))::numeric(10,1) as uv,
  (regexp_substr("Solar", '^[0-9.]+'))::numeric(10,1) as solar_wm2
from source