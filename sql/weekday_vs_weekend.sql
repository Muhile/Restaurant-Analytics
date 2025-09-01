-- 📅 Weekday vs. Weekend Revenue
-- This query compares total revenue between weekdays and weekends.

-- 🧠 What I'm learning:
-- - How to classify days using SQL logic
-- - How to compare performance across time segments
-- - Useful for planning promotions and staffing

SELECT
  CASE strftime('%w', o.order_ts)
    WHEN '0' THEN 'Weekend'
    WHEN '6' THEN 'Weekend'
    ELSE 'Weekday'
  END AS day_type,
  ROUND(SUM(oi.qty * oi.unit_price), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY day_type;
