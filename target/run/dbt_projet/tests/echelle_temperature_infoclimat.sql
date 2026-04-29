
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT * FROM "postgres_db"."projet_8"."fact_infoclimat_data"
WHERE temperature_celsius < -50 OR temperature_celsius > 60
  
  
      
    ) dbt_internal_test