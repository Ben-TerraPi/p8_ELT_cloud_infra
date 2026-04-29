
  create view "postgres_db"."projet_8"."stg_infoclimat_stations__dbt_tmp"
    
    
  as (
    with source as (
  select * from "postgres_db"."projet_8"."infoclimat_data"
),

-- Exploser le tableau stations
stations_exploded as (
  select
    _airbyte_raw_id,
    _airbyte_extracted_at,
    jsonb_array_elements(stations) as station_record
  from source
)

select
  (station_record->>'id')::text as station_id,
  (station_record->>'name')::text as station_name,
  (station_record->>'latitude')::float as latitude,
  (station_record->>'longitude')::float as longitude,
  (station_record->>'elevation')::float as elevation_meters,
  (station_record->>'name')::text as city,
  ('France')::text as State,
  (station_record->>'type')::text as station_type,
  (station_record->'license'->>'license')::text as license_name,
  (station_record->'license'->>'url')::text as license_url,
  (station_record->'license'->>'source')::text as license_source,
  (station_record->'license'->>'metadonnees')::text as license_metadonnees
from stations_exploded
where station_record->>'id' is not null
order by station_id
  );