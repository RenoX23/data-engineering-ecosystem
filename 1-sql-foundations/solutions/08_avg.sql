-- Exercise 08 SOLUTION
-- AVG aggregate

SELECT AVG(total_amount) as avg_order_value
FROM orders;

-- EXPLANATION:
-- AVG(column) = SUM(column) / COUNT(column)
-- Ignores NULL values
-- Use for finding typical/average values
-- Different from: total_amount / count (which would be wrong)
