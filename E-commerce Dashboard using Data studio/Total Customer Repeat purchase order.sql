SELECT 
  DATE(transactions_timestamps) as date,
  user_id,
  status,
  customer_seq
FROM (
SELECT
  transactions_timestamps,
  user_id,
  status,
  RANK() OVER (PARTITION BY user_id ORDER BY transactions_timestamps) AS customer_seq
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions` a
LEFT JOIN `da-labs-b4-ecommerce.b4_ecommerce_dataset.sessions`b
ON a.sessions_id= b.sessions_id
)
WHERE customer_seq > 1
