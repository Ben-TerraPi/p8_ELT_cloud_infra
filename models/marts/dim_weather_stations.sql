{{ config(
    materialized='table',
    indexes=[
        {'columns': ['station_id']}
    ],
    post_hook=[
        """
        DO $$
        BEGIN
            ALTER TABLE {{ this }} DROP CONSTRAINT IF EXISTS pk_dim_weather_station;
            ALTER TABLE {{ this }} ADD CONSTRAINT pk_dim_weather_station PRIMARY KEY (station_id);
        EXCEPTION WHEN OTHERS THEN
            NULL;
        END $$;
        """
    ]
) }}

SELECT 
station_id,
station_name,
latitude,
longitude,
elevation_meters,
city,
state
FROM {{ ref('int_weather_stations') }}