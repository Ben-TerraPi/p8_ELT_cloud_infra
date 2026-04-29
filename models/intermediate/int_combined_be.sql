SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be011024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be021024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be031024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be041024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be051024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be061024') }}

UNION ALL

SELECT 
'IICHTE19'::text as station_id,
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
FROM {{ ref('stg_be071024') }}