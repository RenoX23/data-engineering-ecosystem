-- Exercise 10 SOLUTION
-- BETWEEN operator

SELECT name, price
FROM products
WHERE price BETWEEN 50 AND 200;

-- EXPLANATION:
-- BETWEEN val1 AND val2 = inclusive on both ends
-- price BETWEEN 50 AND 200 means 50 <= price <= 200
-- Equivalent to: price >= 50 AND price <= 200
-- More readable than chained AND conditions
