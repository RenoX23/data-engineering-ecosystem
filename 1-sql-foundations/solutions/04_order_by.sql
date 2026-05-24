-- Exercise 04 SOLUTION
-- ORDER BY with DESC

SELECT name, category, price
FROM products
ORDER BY price DESC;

-- EXPLANATION:
-- ORDER BY sorts result set
-- DESC = descending (highest to lowest)
-- ASC = ascending (lowest to highest, default)
-- Single column sort at end of query
