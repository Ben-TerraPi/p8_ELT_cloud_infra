
  create view "postgres_db"."projet_8"."int_weather_stations__dbt_tmp"
    
    
  as (
    SELECT 
    station_id,
    station_name,
    latitude,
    longitude,
    elevation_meters,
    city,
    state,
    ('Weather Underground')::text AS source
FROM "postgres_db"."projet_8"."stg_weather_stations"

UNION ALL

SELECT 
    station_id,
    station_name,
    latitude,
    longitude,
    elevation_meters,
    city,
    state,
    ('InfoClimat')::text AS source
FROM "postgres_db"."projet_8"."stg_infoclimat_stations"
  );