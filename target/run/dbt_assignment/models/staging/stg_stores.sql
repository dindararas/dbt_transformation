
  create view "analytics"."dev_assignment"."stg_stores__dbt_tmp"
    
    
  as (
    WITH source AS (
    SELECT *
    FROM "analytics"."public"."store"
)

SELECT 
    store_id
    , manager_staff_id
    , address_id
FROM source
  );