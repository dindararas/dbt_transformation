WITH source AS (
    SELECT *
    FROM "analytics"."public"."store"
)

SELECT 
    store_id
    , manager_staff_id
    , address_id
FROM source