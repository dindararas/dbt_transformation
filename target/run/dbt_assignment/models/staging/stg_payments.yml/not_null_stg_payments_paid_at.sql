
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select paid_at
from "analytics"."dev_assignment"."stg_payments"
where paid_at is null



  
  
      
    ) dbt_internal_test