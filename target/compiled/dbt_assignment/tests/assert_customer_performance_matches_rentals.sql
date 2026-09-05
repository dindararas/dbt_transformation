-- singular test to confirm that :
-- 1. The total total_rentals in mart_customer_performance matches the number of rentals in stg_rentals.
-- 2. The total lifetime_payment_total in mart_customer_performance matches the total amount in stg_payments.
WITH mart_total AS (
    SELECT
        SUM(total_rentals) AS total_rentals_mart
        , SUM(lifetime_payment_total) AS lifetime_payment_total_mart
    FROM "analytics"."dev_assignment"."mart_customer_performance"
)

SELECT *
FROM mart_total
WHERE total_rentals_mart != (SELECT COUNT(DISTINCT rental_id) FROM "analytics"."dev_assignment"."stg_rentals")
    OR lifetime_payment_total_mart != (SELECT SUM(amount) FROM "analytics"."dev_assignment"."stg_payments")