
  
    

  create  table "analytics"."dev_assignment"."mart_customer_performance__dbt_tmp"
  
  
    as
  
  (
    SELECT 
    customer_id
    , customer_name
    , total_rentals
    , first_rented_at
    , last_rented_at
    , lifetime_payment_total
    , COALESCE(lifetime_payment_total / NULLIF(total_rentals, 0), 0) AS average_payment_value
FROM "analytics"."dev_assignment"."dim_customers"
  );
  