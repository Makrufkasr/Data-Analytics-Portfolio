SELECT 
DATE(transactions_timestamps) date_trx,
status,
COUNT(transactions_id) transactions
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions`
GROUP BY 1,2
