
    
    

with child as (
    select film_id as from_field
    from "analytics"."dev_assignment"."fact_payments"
    where film_id is not null
),

parent as (
    select film_id as to_field
    from "analytics"."dev_assignment"."dim_films"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


