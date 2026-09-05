
  create view "analytics"."dev_assignment"."stg_rentals__dbt_tmp"
    
    
  as (
    WITH source AS (
    SELECT * 
    FROM "analytics"."public"."rental"
)

SELECT 
    rental_id
    , customer_id
    , inventory_id
    , staff_id
    , rental_date::TIMESTAMP AS rented_at
    , return_date::TIMESTAMP AS returned_at
FROM source
  );