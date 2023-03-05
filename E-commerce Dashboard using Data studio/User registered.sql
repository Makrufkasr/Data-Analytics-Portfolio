SELECT 
DATE(register_date) date,
COUNT(user_id) user_registered 
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.users`
GROUP BY 1
