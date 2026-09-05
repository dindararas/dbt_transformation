
    
    

select
    paid_date as unique_field,
    count(*) as n_records

from "analytics"."dev_assignment"."mart_daily_revenue"
where paid_date is not null
group by paid_date
having count(*) > 1


