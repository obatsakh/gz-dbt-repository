WITH table_2 AS (SELECT *
FROM {{ref('int_orders_margin')}}
JOIN {{ref('stg_raw__ship')}}
USING (orders_id)) 

SELECT orders_id, date_date, (margin + shipping_fee - logcost - ship_cost) AS operational_margin, quantity
from table_2



