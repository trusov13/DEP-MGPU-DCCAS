DROP VIEW IF EXISTS dm_v30_executive;
CREATE VIEW dm_v30_executive AS
SELECT order_id,
       purchase_date,
       purchase_month AS month,
       purchase_year AS year,
       customer_state AS state,
       state_name,
       region,
       state_lat,
       state_lng,
       COALESCE(payment_type, 'unknown') AS payment_type,
       items_cnt,
       goods_value,
       freight_value,
       order_value,
       delivery_days,
       is_late,
       review_score
FROM core_order
WHERE order_status = 'delivered'
  AND purchase_month BETWEEN '2017-01-01' AND '2018-08-01';
