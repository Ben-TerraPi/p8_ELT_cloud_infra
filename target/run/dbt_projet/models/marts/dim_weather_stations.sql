
  
    

  create  table "postgres_db"."projet_8"."dim_weather_stations__dbt_tmp"
  
  
    as
  
  (
    

SELECT 
station_id,
station_name,
latitude,
longitude,
elevation_meters,
city,
state
FROM "postgres_db"."projet_8"."int_weather_stations"
  );
  