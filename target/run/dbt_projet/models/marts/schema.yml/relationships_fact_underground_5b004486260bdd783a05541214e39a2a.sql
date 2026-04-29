
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select station_id as from_field
    from "postgres_db"."projet_8"."fact_underground_data"
    where station_id is not null
),

parent as (
    select  as to_field
    from "postgres_db"."projet_8"."dim_weather_stations"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test