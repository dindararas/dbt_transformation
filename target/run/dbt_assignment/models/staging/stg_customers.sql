
  create view "analytics"."dev_assignment"."stg_customers__dbt_tmp"
    
    
  as (
    -- stg_customers from pagila source
WITH source AS (
    SELECT * 
    FROM "analytics"."public"."customer"
)

SELECT 
    customer_id
    , first_name
    , last_name
    , email
    , active AS is_active
    , create_date AS created_at
    , last_update::TIMESTAMP
FROM source
  );