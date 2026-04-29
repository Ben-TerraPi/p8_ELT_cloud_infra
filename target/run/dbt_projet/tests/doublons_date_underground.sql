
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Vérifier qu'on n'a pas de doublons station_id/date_time
SELECT station_id, date_time, COUNT(*) as cnt
FROM "postgres_db"."projet_8"."fact_underground_data"
GROUP BY station_id, date_time
HAVING COUNT(*) > 1
  
  
      
    ) dbt_internal_test