-- Vérifier qu'on n'a pas de doublons station_id/date_time
SELECT station_id, date_time, COUNT(*) as cnt
FROM {{ ref('fact_underground_data') }}
GROUP BY station_id, date_time
HAVING COUNT(*) > 1