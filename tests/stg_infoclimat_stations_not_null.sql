-- {{ config(severity = "warn") }}
-- Vérifier qu'on n'a pas de valeurs NULL essentielles en staging
SELECT *
FROM {{ ref('stg_infoclimat_stations') }}
WHERE 
  station_id IS NULL
