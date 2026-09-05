-- singular test to confirm that :
-- 1. The total total_revenue in mart_daily_revenue matches the total amount in stg_payments
-- 2. The total total_payments in mart_daily_revenue matches the number of payments in stg_payments.
WITH mart_total AS (
    SELECT
        SUM(total_revenue) AS total_revenue_mart
        , SUM(total_payments) AS total_payments_mart
    FROM "analytics"."dev_assignment"."mart_daily_revenue"
)

SELECT 
    total_revenue_mart
    , total_payments_mart
FROM mart_total
WHERE total_revenue_mart != (SELECT SUM(amount) FROM "analytics"."dev_assignment"."stg_payments")
    OR total_payments_mart != (SELECT COUNT(DISTINCT payment_id) FROM "analytics"."dev_assignment"."stg_payments")