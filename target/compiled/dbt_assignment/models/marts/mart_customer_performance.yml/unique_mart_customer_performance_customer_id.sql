
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "analytics"."dev_assignment"."mart_customer_performance"
where customer_id is not null
group by customer_id
having count(*) > 1


