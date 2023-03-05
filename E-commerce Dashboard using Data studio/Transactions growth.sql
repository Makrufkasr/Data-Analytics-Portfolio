WITH t_revenue AS (
SELECT 
DATE(DATE_TRUNC(transactions_timestamps, MONTH)) date_trx,
status,
COUNT(transactions_id)trx
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions`
GROUP BY 1,2
)
SELECT *,
LAG(trx)OVER( partition by status order by date_trx asc) next_month
FROM t_revenue
order by 1
