
    
    

with all_values as (

    select
        rating as value_field,
        count(*) as n_records

    from "analytics"."dev_assignment"."dim_films"
    group by rating

)

select *
from all_values
where value_field not in (
    'G','PG','PG-13','R','NC-17'
)


