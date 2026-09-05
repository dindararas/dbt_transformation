-- CTE to join stg_film_categories and stg_categories
WITH category_cte AS (
    SELECT 
        fc.film_id
        , string_agg(c.category_name, ', ') AS category
    FROM {{ ref('stg_film_categories')}} fc
    LEFT JOIN {{ ref('stg_categories')}} c
        ON fc.category_id = c.category_id
    GROUP BY 1
),
film_cte AS (
    SELECT 
        f.*
        , rd.description AS rating_description
        , cat.category
    FROM {{ ref('stg_films') }} f
    LEFT JOIN {{ ref('rating_descriptions')}} rd
        ON f.rating = rd.rating
    LEFT JOIN category_cte cat
        ON f.film_id = cat.film_id
), 
agg AS (
    SELECT 
        f.film_id
        , COUNT(DISTINCT i.inventory_id) AS inventory_count
        , COUNT(DISTINCT r.rental_id) AS times_rented
    FROM {{ ref('stg_films') }} f
    LEFT JOIN {{ref('stg_inventory')}} i
        ON f.film_id = i.film_id
    LEFT JOIN {{ ref('stg_rentals')}} r
        ON i.inventory_id = r.inventory_id
    GROUP BY 1
)

SELECT 
    fc.film_id
    , fc.title
    , fc.category
    , fc.rating
    , fc.rating_description
    , fc.rental_rate
    , COALESCE(a.inventory_count, 0) AS inventory_count
    , COALESCE(a.times_rented, 0) AS times_rented
    , CASE 
        WHEN COALESCE(a.inventory_count, 0) > 0 THEN TRUE ELSE FALSE
    END AS is_available
FROM film_cte fc
LEFT JOIN agg a
    ON fc.film_id = a.film_id