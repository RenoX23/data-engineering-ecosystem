-- Exercise 03 SOLUTION
-- WHERE with AND (multiple conditions)

SELECT c.name, o.order_id, o.status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.country = 'USA' AND o.status = 'delivered';

-- EXPLANATION:
-- AND requires BOTH conditions true
-- JOIN combines customer + order data
-- Filters: only USA customers + delivered orders
-- Multiple conditions reduce result set
