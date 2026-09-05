
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select is_available
from "analytics"."dev_assignment"."dim_films"
where is_available is null



  
  
      
    ) dbt_internal_test