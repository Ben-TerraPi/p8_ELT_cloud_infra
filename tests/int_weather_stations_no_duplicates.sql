-- {{ config(severity = "error") }}
-- Vérifier qu'on n'a pas de doublons station_id en intermediate
SELECT station_id, COUNT(*) as cnt
FROM {{ ref('int_weather_stations') }}
GROUP BY station_id
HAVING COUNT(*) > 1
