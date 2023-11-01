WITH table_1 AS (Select *
    , (quantity * purchase_price) AS purchase_cost
from {{ref('stg_raw__sales')}} 
JOIN {{ref('stg_raw__product')}} 
USING (products_id))

SELECT *, (revenue - purchase_cost) AS margin, {{margin_percent ('revenue','purchase_cost')}} as margin_percent
FROM table_1
