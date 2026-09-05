
  create view "analytics"."dev_assignment"."stg_inventory__dbt_tmp"
    
    
  as (
    WITH source AS (
    SELECT * 
    FROM "analytics"."public"."inventory"
)

SELECT 
    inventory_id
    , film_id
    , store_id
FROM source
  );