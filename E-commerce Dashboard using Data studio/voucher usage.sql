WITH t_voucher as
 (
 SELECT
 DATE(transactions_timestamps) date,
 status,
 COUNT(voucher_id) as voucher
 FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions`
 WHERE voucher_id != 4
 group by 1,2
 ),
 t_transactions as
 (
   SELECT
   DATE(transactions_timestamps) date,
   status,
   COUNT(transactions_id) as transactions
   FROM `da-labs-b4-ecommerce.b4_ecommerce_dataset.transactions`
   GROUP BY 1,2
 )
SELECT
a.date,
voucher,
b.status
transactions,
(voucher/transactions)/100 AS percentatage
FROM t_voucher a
LEFT JOIN t_transactions b
on a.date = b.date
