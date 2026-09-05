WITH source AS (
    SELECT * 
    FROM "analytics"."public"."inventory"
)

SELECT 
    inventory_id
    , film_id
    , store_id
FROM source