
  create view "analytics"."dev_assignment"."stg_payments__dbt_tmp"
    
    
  as (
    WITH source AS (
    SELECT * 
    FROM "analytics"."public"."payment"
)

SELECT  
    payment_id
    , customer_id
    , rental_id
    , staff_id
    , amount
    , payment_date AS paid_at
FROM source
  );