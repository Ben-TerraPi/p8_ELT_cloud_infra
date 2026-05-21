-- {{ config(severity = "error") }}
-- Vérifier que chaque station_id est unique en dim_weather_stations
SELECT station_id, COUNT(*) as cnt
FROM {{ ref('dim_weather_stations') }}
GROUP BY station_id
HAVING COUNT(*) > 1
