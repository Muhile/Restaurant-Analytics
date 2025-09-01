-- 📊 Revenue and Average Order Value (AOV)
-- This query calculates total revenue, total number of orders,
-- and the average order value (AOV) across all orders.

-- 🧠 What I'm learning:
-- - How to use a CTE (Common Table Expression) to simplify logic
-- - How to aggregate data using SUM, COUNT, and AVG
-- - How to calculate metrics that are key for business performance

WITH order_totals AS (
  SELECT
    order_id,
    SUM(qty * unit_price) AS order_revenue
  FROM order_items
  GROUP BY order_id
)
SELECT
  COUNT(*) AS total_orders,
  ROUND(SUM(order_revenue), 2) AS total_revenue,
  ROUND(AVG(order_revenue), 2) AS avg_order_value
FROM order_totals;
