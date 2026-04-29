
  create view "postgres_db"."projet_8"."stg_underground_be__dbt_tmp"
    
    
  as (
    

SELECT
    *,
    'BE' as country
FROM "postgres_db"."projet_8"."underground_be"
  );