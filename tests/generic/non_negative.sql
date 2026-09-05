-- additional test for generic use that is related to number
{% test non_negative(model, column_name) %}

SELECT *
FROM {{model}}
WHERE {{column_name}} < 0 
{% endtest %}