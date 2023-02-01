--Create a query to get the number of unique users, number of orders, and total sale price per status and month. Please use time frame from Jan 2019 until Aug 2022
SELECT
  DATE(DATE_TRUNC(created_at, MONTH)) date,
  FORMAT_DATE('%B, %Y', created_at) month_year,
  status,
  COUNT(DISTINCT user_id) unique_user,
  COUNT(DISTINCT order_id) total_order,
  ROUND(SUM(sale_price),2) total_sale_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE DATE_TRUNC(created_at, MONTH) BETWEEN '2019-01-01' AND '2022-08-31'
GROUP BY 1,2,3
ORDER BY 1,3

--- Create a query to get frequencies, average order value and total number of unique users where status is complete grouped by month. Please use time frame from Jan 2019 until Aug 2022 
SELECT
 DATE(DATE_TRUNC(created_at, MONTH)) date,
 ROUND(COUNT(DISTINCT(order_id)) / COUNT(DISTINCT(user_id)),2) frequencies,
 ROUND(SUM(sale_price)/COUNT(distinct order_id),2) aov,
 COUNT(DISTINCT user_id) unique_buyer
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE DATE(created_at) BETWEEN '2019-01-01' AND '2022-08-31' AND status='Complete'
GROUP BY 1

-- Find the user id, email, first and last name of users whose status is refunded on Aug 22 
SELECT 
  a.id user_id,
  email,
  first_name,
  last_name
FROM `bigquery-public-data.thelook_ecommerce.users` a
INNER JOIN `bigquery-public-data.thelook_ecommerce.orders` b
ON a.id = b.user_id
WHERE 
  status = "Returned" and 
  DATE(b.returned_at) between "2022-08-01" and "2022-08-31"
ORDER BY 1 ASC

-- Get the top 5 least and most profitable product over all time
WITH top_profit as
(
  SELECT
  DISTINCT b.id product_id,
  UPPER(b.name) product_name,
  ROUND(retail_price,2) retail_price,
  ROUND(cost,2) cost,
  ROUND ((sale_price-cost),2) profit,
  'Top-profitable' category
FROM `bigquery-public-data.thelook_ecommerce.order_items` a
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` b
ON a.product_id = b.id
),

bottom_profit as
(
  SELECT
  DISTINCT b.id product_id,
  UPPER(b.name) product_name,
  ROUND(retail_price,2) retail_price,
  ROUND(cost,2) cost,
  ROUND ((sale_price-cost),2) profit,
  'Bottom-profitable' category
FROM `bigquery-public-data.thelook_ecommerce.order_items` a
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` b
ON a.product_id = b.id
)

(SELECT *, RANK()OVER(ORDER BY profit DESC) AS rank
FROM top_profit
ORDER BY rank ASC
LIMIT 5)

UNION ALL

(SELECT *, RANK()OVER(ORDER BY profit ASC)AS rank
FROM bottom_profit
ORDER BY rank ASC
LIMIT 5)

-- Create a query to get Month to Date of total profit in each product categories of past 3 months (current date 15 Aug 2022), breakdown by date
Create a query to get Month to Date of total profit in each product categories of past 3 months (current date 15 Aug 2022), breakdown by date
WITH profit AS
( 
  SELECT 
    DATE(a.shipped_at) AS order_date,
    b.category AS product_category,
    ROUND(SUM(a.sale_price - b.cost),2) AS category_profit
  FROM `bigquery-public-data.thelook_ecommerce.order_items` AS a
  INNER JOIN `bigquery-public-data.thelook_ecommerce.products` AS b
  ON a.product_id = b.id
  WHERE a.shipped_at BETWEEN "2022-01-01" AND "2022-08-15" AND status = "Complete"
  GROUP BY 1,2
  ORDER BY 2,1
),

mtd_table AS
( SELECT order_date,
         product_category,
         category_profit,
         SUM(category_profit) OVER(PARTITION BY product_category, EXTRACT(MONTH FROM order_date) ORDER BY product_category,order_date) AS mtd
  FROM profit
  ORDER BY 2,1
)

SELECT order_date,product_category, mtd  
FROM mtd_table 
WHERE order_date BETWEEN "2022-06-01" AND "2022-08-15" 
      AND EXTRACT(DAY FROM order_date) = 15
ordered by time descendingly. After analyzing the monthly growth, is there any interesting insight that we can get? Please use time frame from Jan 2019 until Apr 2022 

--- Find monthly growth of inventory in percentage breakdown by product categories, ordered by time descendingly. After analyzing the monthly growth, is there any interesting insight that we can get? Please use time frame from Jan 2019 until Apr 2022 
--Versi 1
WITH inventory AS
(
  SELECT 
    DATE(DATE_TRUNC (created_at, month)) date,
    product_category categories,
    COUNT(id) as total_inventory
  FROM `bigquery-public-data.thelook_ecommerce.inventory_items`
  WHERE DATE_TRUNC(created_at, MONTH) BETWEEN '2019-01-01' AND '2022-04-30'
  GROUP BY 1,2
  ORDER BY 1 DESC
)
SELECT *,
CONCAT(ROUND((LEAD(total_inventory)OVER(PARTITION BY categories ORDER BY date)-total_inventory)/LEAD(total_inventory)OVER(PARTITION BY categories ORDER BY date)*100,2),'%') inventory_growth
FROM inventory
ORDER BY 1

-- Monthly retention cohorts and then how many of them (%) coming back for the following months in 2022.

WITH cohort_items AS
  (
    SELECT 
      user_id, 
      MIN(DATE(DATE_TRUNC(created_at, MONTH))) month
    FROM `bigquery-public-data.thelook_ecommerce.orders`
    GROUP BY 1
    ORDER BY 1
  ),

user_activities AS 
  (
    SELECT 
      a.user_id,
      DATE_DIFF(DATE(DATE_TRUNC(created_at, month)), b.Month, MONTH) month_number
    FROM `bigquery-public-data.thelook_ecommerce.orders` AS a
    LEFT JOIN cohort_items AS b
    ON a.user_id = b.user_id
    WHERE EXTRACT(year FROM month)=2022
    GROUP BY 1,2
),
cohort_size AS 
  (
    SELECT month,
    COUNT(user_id) AS num_users
 FROM cohort_items
 GROUP BY 1
 ORDER BY 1
),
retention_table AS (
SELECT
 c.month,
 a.month_number,
 COUNT(1) AS num_users
  FROM user_activities AS a
 LEFT JOIN cohort_items AS c
 ON a.user_id=c.user_id
 GROUP BY 1,2
 ORDER BY 1,2 )
SELECT d.month,
 e.num_users AS cohort_size,
 d.month_number,
 d.num_users AS total_users,
 (CAST(d.num_users AS decimal)/e.num_users) AS
percentage
FROM retention_table AS d
LEFT JOIN cohort_size AS e
ON d.month=e.month
WHERE d.month IS NOT NULL
ORDER BY 1,3 
