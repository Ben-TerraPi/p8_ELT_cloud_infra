
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select date_time
from "postgres_db"."projet_8"."fact_underground_data"
where date_time is null



  
  
      
    ) dbt_internal_test