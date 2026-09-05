
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select payment_id
from "analytics"."dev_assignment"."fact_payments"
where payment_id is null



  
  
      
    ) dbt_internal_test