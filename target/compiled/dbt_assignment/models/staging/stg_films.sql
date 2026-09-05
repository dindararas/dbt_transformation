WITH source as (
    SELECT * 
    FROM "analytics"."public"."film"
)

SELECT
    film_id
    , title
    , description
    , rental_rate
    , replacement_cost
    , length as length_minutes
    , rating::text as rating  
from source