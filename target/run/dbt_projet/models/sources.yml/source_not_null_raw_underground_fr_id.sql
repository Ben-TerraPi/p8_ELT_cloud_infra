
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select id
from "postgres_db"."projet_8"."underground_fr"
where id is null



  
  
      
    ) dbt_internal_test