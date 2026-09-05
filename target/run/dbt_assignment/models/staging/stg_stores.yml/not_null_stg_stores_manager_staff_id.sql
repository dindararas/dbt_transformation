
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select manager_staff_id
from "analytics"."dev_assignment"."stg_stores"
where manager_staff_id is null



  
  
      
    ) dbt_internal_test