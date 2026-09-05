-- this table is additional staging table for bridging film and film category 
WITH source AS (
    SELECT * 
    FROM {{ source('pagila', 'film_category') }}
)

SELECT 
    film_id
    , category_id
    , last_update
FROM source