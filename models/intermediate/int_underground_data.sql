SELECT 
    station_id,
    date_time,
    temperature_celsius,
    pression_hpa,
    humidite_pourcentage,
    point_de_rosee_celsius,
    CASE vent_moyen_kmh
    WHEN 0 THEN False
    ELSE True
    END::boolean AS vent,
    vent_moyen_kmh,
    vent_rafales_kmh,
    vent_direction_deg,
    CASE 
    WHEN pluie_ratio_mm > 0 OR pluie_accum_mm > 0 THEN True
    ELSE False
    END::boolean AS pluie,
    pluie_ratio_mm,
    pluie_accum_mm,
    uv,
    solar_wm2
FROM {{ ref('int_combined_be') }}

UNION ALL

SELECT 
    station_id,
    date_time,
    temperature_celsius,
    pression_hpa,
    humidite_pourcentage,
    point_de_rosee_celsius,
    CASE 
    WHEN vent_moyen_kmh > 0 THEN True
    ELSE False
    END::boolean AS vent,
    vent_moyen_kmh,
    vent_rafales_kmh,
    vent_direction_deg,
    CASE 
    WHEN pluie_ratio_mm > 0 OR pluie_accum_mm > 0 THEN True
    ELSE False
    END::boolean AS pluie,
    pluie_ratio_mm,
    pluie_accum_mm,
    uv,
    solar_wm2
FROM {{ ref('int_combined_fr') }}

