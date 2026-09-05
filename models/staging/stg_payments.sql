WITH source AS (
    SELECT * 
    FROM {{ source('pagila', 'payment') }}
)

SELECT  
    payment_id
    , customer_id
    , rental_id
    , staff_id
    , amount
    , payment_date AS paid_at
FROM source