
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select average_payment_value
from "analytics"."dev_assignment"."mart_customer_performance"
where average_payment_value is null



  
  
      
    ) dbt_internal_test