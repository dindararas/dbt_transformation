
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

SELECT *
FROM "analytics"."dev_assignment"."dim_customers"
WHERE lifetime_payment_total < 0 

  
  
      
    ) dbt_internal_test