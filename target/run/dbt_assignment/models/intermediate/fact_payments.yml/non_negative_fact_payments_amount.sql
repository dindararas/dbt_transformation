
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

SELECT *
FROM "analytics"."dev_assignment"."fact_payments"
WHERE amount < 0 

  
  
      
    ) dbt_internal_test