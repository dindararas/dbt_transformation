-- since stg_rentals doesn't have film_id, join stg_rentals with stg_inventory and stg_films
WITH join_cte AS (
    SELECT 
        r.rental_id
        , r.inventory_id
        , i.film_id
        , i.store_id
        , f.title
    FROM "analytics"."dev_assignment"."stg_rentals" r
    LEFT JOIN "analytics"."dev_assignment"."stg_inventory" i
        ON r.inventory_id = i.inventory_id
    LEFT JOIN "analytics"."dev_assignment"."stg_films" f
        ON i.film_id = f.film_id
)

SELECT 
    p.payment_id
    , p.paid_at
    , p.paid_at::DATE AS paid_date
    , c.customer_id
    , c.first_name || ' ' || c.last_name AS customer_name
    , p.staff_id
    , j.store_id
    , p.rental_id
    , j.film_id
    , j.title AS film_title
    , p.amount
FROM "analytics"."dev_assignment"."stg_payments" p
LEFT JOIN "analytics"."dev_assignment"."stg_customers" c
    ON p.customer_id = c.customer_id
LEFT JOIN join_cte j
    ON p.rental_id = j.rental_id