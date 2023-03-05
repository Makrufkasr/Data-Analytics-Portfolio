SELECT
DATE(visits_timestamps) date,
COUNT(sessions_id) traffic,
FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.sessions`
GROUP BY 1
