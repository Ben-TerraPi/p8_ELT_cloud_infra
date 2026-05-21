-- {{ config(severity = "error") }}
SELECT * FROM {{ ref('fact_infoclimat_data') }}
WHERE temperature_celsius < -50 OR temperature_celsius > 60