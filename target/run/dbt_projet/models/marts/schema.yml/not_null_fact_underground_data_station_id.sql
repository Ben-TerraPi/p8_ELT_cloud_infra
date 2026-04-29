
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select station_id
from "postgres_db"."projet_8"."fact_underground_data"
where station_id is null



  
  
      
    ) dbt_internal_test