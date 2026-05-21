-- {{ config(severity = "error") }}
SELECT * FROM {{ ref('fact_infoclimat_data') }}
WHERE humidite_pourcentage < 0 OR humidite_pourcentage > 100