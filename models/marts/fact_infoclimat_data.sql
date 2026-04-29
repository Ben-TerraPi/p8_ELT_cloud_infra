{{ config(
    materialized='table',
    indexes=[
        {'columns': ['id']},
        {'columns': ['station_id']},
        {'columns': ['date']}
    ],
    post_hook=[
        """
        DO $$
        BEGIN
            ALTER TABLE {{ this }} DROP CONSTRAINT IF EXISTS pk_fact_infoclimat_data;
            ALTER TABLE {{ this }} ADD CONSTRAINT pk_fact_infoclimat_data PRIMARY KEY (id);
            ALTER TABLE {{ this }} DROP CONSTRAINT IF EXISTS fk_fact_infoclimat_station;
            ALTER TABLE {{ this }} ADD CONSTRAINT fk_fact_infoclimat_station FOREIGN KEY (station_id) REFERENCES {{ ref('dim_weather_stations') }}(station_id);
        EXCEPTION WHEN OTHERS THEN
            NULL;
        END $$;
        """
    ]
) }}

SELECT
ROW_NUMBER() OVER (ORDER BY date, time, station_id) AS id,
station_id,  
date,
time,
temperature_celsius, 
pression_hpa, 
humidite_pourcentage, 
point_de_rosee_celsius, 
vent,
vent_moyen_kmh, 
vent_direction_deg, 
pluie
FROM {{ ref('int_infoclimat_data') }}