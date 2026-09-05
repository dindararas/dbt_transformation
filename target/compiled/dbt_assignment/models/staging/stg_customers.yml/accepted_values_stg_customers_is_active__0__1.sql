
    
    

with all_values as (

    select
        is_active as value_field,
        count(*) as n_records

    from "analytics"."dev_assignment"."stg_customers"
    group by is_active

)

select *
from all_values
where value_field not in (
    '0','1'
)


