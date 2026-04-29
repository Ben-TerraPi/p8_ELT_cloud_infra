
    
    

select
    id as unique_field,
    count(*) as n_records

from "postgres_db"."projet_8"."fact_underground_data"
where id is not null
group by id
having count(*) > 1


