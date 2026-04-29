
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT * FROM "postgres_db"."projet_8"."fact_underground_data"
WHERE humidite_pourcentage < 0 OR humidite_pourcentage > 100
  
  
      
    ) dbt_internal_test