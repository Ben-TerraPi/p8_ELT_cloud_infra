-- {{ config(severity = "error") }}
-- Vérifier qu'on n'a pas de doublons station_id/date_time en intermediate
SELECT station_id, date_time, COUNT(*) as cnt
FROM {{ ref('int_combined_be') }}
GROUP BY station_id, date_time
HAVING COUNT(*) > 1
