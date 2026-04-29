{{ config(
    materialized='table',
    indexes=[
        {'columns': ['station_id']}
    ],
    post_hook=[
        "ALTER TABLE {{ this }} ADD CONSTRAINT pk_dim_weather_station PRIMARY KEY (station_id)"
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