-- 💰 Item Profit Margins
-- This query calculates the profit margin for each menu item.

-- 🧠 What I'm learning:
-- - How to calculate margin using price and cost
-- - How to rank items by profitability
-- - Helps identify which items to promote for higher profits

SELECT
  item_name,
  category,
  ROUND(price, 2) AS menu_price,
  ROUND(cost, 2) AS unit_cost,
  ROUND(price - cost, 2) AS profit_margin
FROM menu
ORDER BY profit_margin DESC;
