
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    paid_date as unique_field,
    count(*) as n_records

from "analytics"."dev_assignment"."mart_daily_revenue"
where paid_date is not null
group by paid_date
having count(*) > 1



  
  
      
    ) dbt_internal_test