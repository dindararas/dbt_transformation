
    
    

with child as (
    select store_id as from_field
    from "analytics"."dev_assignment"."stg_inventory"
    where store_id is not null
),

parent as (
    select store_id as to_field
    from "analytics"."dev_assignment"."stg_stores"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


