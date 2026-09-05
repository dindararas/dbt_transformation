WITH source AS (
    SELECT * 
    FROM {{ source('pagila', 'rental') }}
)

SELECT 
    rental_id
    , customer_id
    , inventory_id
    , staff_id
    , rental_date::TIMESTAMP AS rented_at
    , return_date::TIMESTAMP AS returned_at
FROM source