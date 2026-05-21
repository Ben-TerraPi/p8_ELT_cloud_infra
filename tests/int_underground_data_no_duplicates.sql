-- {{ config(severity = "error") }}
-- Vérifier qu'on n'a pas de doublons station_id/date_time en intermediate
SELECT station_id, date, time, COUNT(*) as cnt
FROM {{ ref('int_underground_data') }}
GROUP BY station_id, date, time
HAVING COUNT(*) > 1
