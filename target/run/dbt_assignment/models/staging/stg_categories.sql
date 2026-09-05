
  create view "analytics"."dev_assignment"."stg_categories__dbt_tmp"
    
    
  as (
    -- additional staging table for category description

WITH source AS (

    SELECT * 
    FROM "analytics"."public"."category"

)

SELECT
    category_id
    , name as category_name
    , last_update
FROM source
  );