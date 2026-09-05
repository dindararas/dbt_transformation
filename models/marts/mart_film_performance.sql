WITH payment_agg AS (
    SELECT
        film_id
        , SUM(amount) AS total_revenue
    FROM  {{ ref('fact_payments')}}
    GROUP BY 1
)

SELECT 
    f.film_id
    , f.title
    , f.category
    , f.inventory_count
    , f.rental_rate
    , COALESCE(f.times_rented, 0) AS times_rented
    , COALESCE(p.total_revenue,0) AS total_revenue
FROM {{ ref('dim_films')}} AS f
LEFT JOIN  payment_agg p
    ON f.film_id = p.film_id
