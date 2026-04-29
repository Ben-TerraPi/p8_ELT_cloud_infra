
    
    

select
    station_id as unique_field,
    count(*) as n_records

from "postgres_db"."projet_8"."dim_weather_stations"
where station_id is not null
group by station_id
having count(*) > 1


