
  create view "postgres_db"."projet_8"."int_uderground_data__dbt_tmp"
    
    
  as (
    SELECT *
FROM "postgres_db"."projet_8"."int_combined_be"

UNION ALL 

SELECT *
FROM "postgres_db"."projet_8"."int_combined_fr"
  );