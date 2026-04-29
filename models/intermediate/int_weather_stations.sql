SELECT 
    station_id,
    station_name,
    latitude,
    longitude,
    elevation_meters,
    city,
    state,
    ('Weather Underground')::text AS source
FROM {{ ref('stg_weather_stations') }}

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
FROM {{ ref('stg_infoclimat_stations') }}
