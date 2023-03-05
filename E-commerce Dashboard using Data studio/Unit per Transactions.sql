WITH t_main AS
(
SELECT
  DATE(transactions_timestamps) date,
  product_category,
  status,
  COUNT(DISTINCT a.transactions_id) as transactions,
  SUM(product_qty) as qty
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transaction_items` a
LEFT JOIN `da-labs-b4-ecommerce.b4_ecommerce_dataset.products`b
ON a.product_id = b.product_id
LEFT JOIN `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions`c
ON a.transactions_id = c.transactions_id
GROUP BY 1,2,3
)
SELECT *,
ROUND(qty/t_main.transactions,2) as ABS
FROM t_main
ORDER BY 4 DESC
