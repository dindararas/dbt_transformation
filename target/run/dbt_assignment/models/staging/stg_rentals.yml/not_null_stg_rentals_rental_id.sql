
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rental_id
from "analytics"."dev_assignment"."stg_rentals"
where rental_id is null



  
  
      
    ) dbt_internal_test