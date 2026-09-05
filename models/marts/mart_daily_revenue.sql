SELECT 
    paid_date
    , store_id
    , COUNT(DISTINCT payment_id) AS total_payments
    , COUNT(DISTINCT customer_id)  AS unique_customers
    , SUM(amount)  AS total_revenue
FROM {{ ref('fact_payments')}}
GROUP BY 1, 2
ORDER BY 1 ASC, 2 ASC

