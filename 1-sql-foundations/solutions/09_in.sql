-- Exercise 09 SOLUTION
-- IN operator

SELECT name, category, price
FROM products
WHERE category IN ('Electronics', 'Home');

-- EXPLANATION:
-- IN (val1, val2, ...) = OR chained together
-- WHERE category IN ('Electronics', 'Home')
-- = WHERE category = 'Electronics' OR category = 'Home'
-- More readable than OR chains
-- Can check membership in list
