SELECT orders_id 
    , date_date
    , ROUND(SUM(revenue),2) AS revenue
    , ROUND(SUM(quantity),2) as quantity
    , ROUND(SUM(purchase_cost),2) as purchase_cost 
    , ROUND(sum(margin),2) as margin 
FROM {{ref('int_sales_margin')}}
GROUP BY date_date, orders_id
ORDER BY date_date DESC, orders_id DESC