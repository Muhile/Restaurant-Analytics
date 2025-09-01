-- ⏰ Revenue by Hour of Day
-- This query shows how much revenue is generated during each hour of the day.

-- 🧠 What I'm learning:
-- - How to extract time features from a timestamp
-- - How to group data by hour
-- - How to identify peak hours for staffing and promotions

SELECT
  CAST(strftime('%H', o.order_ts) AS INTEGER) AS hour,
  ROUND(SUM(oi.qty * oi.unit_price), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY hour
ORDER BY hour;
