
  create view "postgres_db"."projet_8"."int_combined_fr__dbt_tmp"
    
    
  as (
    SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr011024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr021024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr031024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr041024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr051024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr061024"

UNION ALL

SELECT 
'ILAMAD25'::text as station_id,
date_time,
temperature_celsius,
pression_hpa,
humidite_pourcentage,
point_de_rosee_celsius,
vent_moyen_kmh,
vent_rafales_kmh,
vent_direction_deg,
pluie_ratio_mm,
pluie_accum_mm, 
uv, solar_wm2
FROM "postgres_db"."projet_8"."stg_fr071024"
  );