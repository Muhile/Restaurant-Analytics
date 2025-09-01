-- 🔝 Top-Selling Items by Revenue and Quantity
-- This query identifies the top 5 items based on total revenue and quantity sold.

-- 🧠 What I'm learning:
-- - How to join tables to enrich data
-- - How to group and rank items by performance
-- - How to identify best sellers for menu optimization

SELECT
  m.item_name,
  m.category,
  SUM(oi.qty) AS total_qty,
  ROUND(SUM(oi.qty * oi.unit_price), 2) AS total_revenue
FROM order_items oi
JOIN menu m ON m.item_id = oi.item_id
GROUP BY m.item_name, m.category
ORDER BY total_revenue DESC
LIMIT 5;
