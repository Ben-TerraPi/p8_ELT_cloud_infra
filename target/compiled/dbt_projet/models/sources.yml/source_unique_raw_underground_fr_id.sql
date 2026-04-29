
    
    

select
    id as unique_field,
    count(*) as n_records

from "postgres_db"."projet_8"."underground_fr"
where id is not null
group by id
having count(*) > 1


