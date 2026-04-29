
  
    

  create  table "postgres_db"."projet_8"."fact_infoclimat_data__dbt_tmp"
  
  
    as
  
  (
    

SELECT
ROW_NUMBER() OVER (ORDER BY date_time, station_id) AS id,
station_id,  
date_time, 
temperature_celsius, 
pression_hpa, 
humidite_pourcentage, 
point_de_rosee_celsius, 
vent,
vent_moyen_kmh, 
vent_direction_deg, 
pluie
FROM "postgres_db"."projet_8"."int_infoclimat_data"
  );
  