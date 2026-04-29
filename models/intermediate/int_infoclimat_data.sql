SELECT 
ROW_NUMBER() OVER (ORDER BY station_id, date_time::date, date_time::time) AS measurement_id,
station_id, 
date_time::date AS date,
date_time::time AS time,
temperature_celsius,
pression_hpa,
humidite_pourcentage, 
point_de_rosee_celsius, 
CASE 
WHEN vent_moyen_kmh > 0 THEN True
ELSE False
END::boolean AS vent,
vent_moyen_kmh,  
vent_direction_deg, 
CASE 
WHEN pluie_1h_mm > 0 OR pluie_3h_mm > 0 THEN True
ELSE False
END::boolean AS pluie
FROM {{ ref('stg_infoclimat_data')}}