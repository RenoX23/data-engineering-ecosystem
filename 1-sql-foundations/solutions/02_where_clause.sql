-- Exercise 02 SOLUTION
-- WHERE with single condition

SELECT name, email, country
FROM customers
WHERE country = 'USA';

-- EXPLANATION:
-- WHERE filters rows based on condition
-- = matches exact value
-- Only returns customers where country column = 'USA'
