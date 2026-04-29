
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select temperature_celsius
from "postgres_db"."projet_8"."fact_infoclimat_data"
where temperature_celsius is null



  
  
      
    ) dbt_internal_test