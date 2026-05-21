-- {{ config(severity = "warn") }}
-- Vérifier qu'on n'a pas de valeurs NULL essentielles en staging
SELECT *
FROM {{ ref('stg_infoclimat_data') }}
WHERE 
  station_id IS NULL 
  OR date_time IS NULL 
  OR temperature_celsius IS NULL 
  OR humidite_pourcentage IS NULL
