
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        rating as value_field,
        count(*) as n_records

    from "analytics"."dev_assignment"."stg_films"
    group by rating

)

select *
from all_values
where value_field not in (
    'G','PG','PG-13','R','NC-17'
)



  
  
      
    ) dbt_internal_test