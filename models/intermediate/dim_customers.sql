-- aggregate total rentals, first rental date, last rental date, and lifetime payment total by customer
WITH rental_agg AS (
    SELECT
        customer_id
        , COUNT(DISTINCT rental_id) AS total_rentals
        , MIN(rented_at) AS first_rented_at
        , MAX(rented_at) AS last_rented_at 
    FROM  {{ ref('stg_rentals')}} 
    GROUP BY 1
),

payment_agg AS (
    SELECT 
        customer_id
        , SUM(amount) AS lifetime_payment_total
    FROM {{ ref('stg_payments') }}
    GROUP BY 1
)

-- main query
SELECT 
    c.customer_id
    , {{ full_name('c.first_name', 'c.last_name') }} AS customer_name
    , COALESCE(r.total_rentals, 0) AS total_rentals
    , r.first_rented_at
    , r.last_rented_at
    , COALESCE(p.lifetime_payment_total, 0) AS lifetime_payment_total
FROM {{ ref('stg_customers')}} c
LEFT JOIN rental_agg r
    ON c.customer_id = r.customer_id
LEFT JOIN payment_agg p
    ON c.customer_id = p.customer_id
