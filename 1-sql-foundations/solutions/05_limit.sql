-- Exercise 05 SOLUTION
-- LIMIT

SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- EXPLANATION:
-- LIMIT N returns only first N rows
-- Always use with ORDER BY to control which rows returned
-- LIMIT 3 = "give me top 3"
-- Without ORDER BY, which 3? Undefined. Bad query.
