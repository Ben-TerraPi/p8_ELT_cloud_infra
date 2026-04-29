{{ config(
    materialized='table',
    indexes=[
        {'columns': ['id']},
        {'columns': ['station_id']},
        {'columns': ['date_time']}
    ],
    post_hook=[
        "ALTER TABLE {{ this }} ADD CONSTRAINT pk_fact_infoclimat_data PRIMARY KEY (id)",
        "ALTER TABLE {{ this }} ADD CONSTRAINT fk_fact_infoclimat_station FOREIGN KEY (station_id) REFERENCES {{ ref('dim_weather_stations') }}(station_id)"
    ]
) }}

SELECT
ROW_NUMBER() OVER (ORDER BY date_time, station_id) AS id,
station_id,  
date_time, 
temperature_celsius, 
pression_hpa, 
humidite_pourcentage, 
point_de_rosee_celsius, 
vent,
vent_moyen_kmh, 
vent_direction_deg, 
pluie
FROM {{ ref('int_infoclimat_data') }}