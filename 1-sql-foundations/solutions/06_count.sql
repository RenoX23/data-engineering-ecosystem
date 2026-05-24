-- Exercise 06 SOLUTION
-- COUNT aggregate

SELECT COUNT(*) as total_orders
FROM orders;

-- EXPLANATION:
-- COUNT(*) = count all rows
-- COUNT(column) = count non-NULL values in column
-- AS gives result column alias
-- Returns 1 row, 1 value
