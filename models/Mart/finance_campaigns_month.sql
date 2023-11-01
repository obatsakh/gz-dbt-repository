Select CAST({{date_trunc("month", "date_date")}} as date) AS datemonth
, ROUND(SUM(ads_margin),0) as ads_margin
, ROUND(SUM(average_basket),0) as average_basket
, ROUND(sum(operational_margin),0) as operational_margin
FROM {{ref('finance_campaigns_day')}}
GROUP BY datemonth

