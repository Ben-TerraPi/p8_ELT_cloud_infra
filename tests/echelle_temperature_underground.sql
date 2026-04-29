SELECT * FROM {{ ref('fact_underground_data') }}
WHERE temperature_celsius < -50 OR temperature_celsius > 60