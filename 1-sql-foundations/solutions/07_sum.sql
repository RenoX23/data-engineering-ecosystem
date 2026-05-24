-- Exercise 07 SOLUTION
-- SUM aggregate

SELECT SUM(total_amount) as total_revenue
FROM orders;

-- EXPLANATION:
-- SUM(column) adds all values in column
-- Ignores NULL values
-- Result = 1 row, 1 numeric value
-- Watch: SUM of NULL = NULL if all rows NULL
