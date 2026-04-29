
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select humidite_pourcentage
from "postgres_db"."projet_8"."fact_infoclimat_data"
where humidite_pourcentage is null



  
  
      
    ) dbt_internal_test