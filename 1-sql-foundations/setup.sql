-- SQL Foundations Setup
-- Creates sample ecommerce database
-- Schema: customers, orders, order_items, products

DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;

-- CUSTOMERS
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    country VARCHAR(50),
    signup_date DATE NOT NULL,
    lifetime_value DECIMAL(10, 2)
);

-- PRODUCTS
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT,
    created_date DATE
);

-- ORDERS
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20), -- pending, shipped, delivered, cancelled
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER_ITEMS (Order line items)
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id),
    product_id INT NOT NULL REFERENCES products(product_id),
    quantity INT NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Data
INSERT INTO customers (name, email, country, signup_date, lifetime_value) VALUES
('Alice Johnson', 'alice@example.com', 'USA', '2022-01-15', 5000.00),
('Bob Smith', 'bob@example.com', 'USA', '2022-02-20', 3200.00),
('Carol Williams', 'carol@example.com', 'UK', '2022-03-10', 8500.00),
('David Brown', 'david@example.com', 'Canada', '2022-04-05', 2100.00),
('Eve Davis', 'eve@example.com', 'USA', '2022-05-12', 6700.00),
('Frank Miller', 'frank@example.com', 'Germany', '2022-06-18', 4200.00),
('Grace Lee', 'grace@example.com', 'USA', '2022-07-22', 9100.00),
('Henry Wilson', 'henry@example.com', 'UK', '2022-08-30', 1500.00),
('Iris Taylor', 'iris@example.com', 'USA', '2022-09-14', 7800.00),
('Jack Anderson', 'jack@example.com', 'Australia', '2022-10-25', 4500.00);

INSERT INTO products (name, category, price, stock_quantity, created_date) VALUES
('Laptop', 'Electronics', 999.99, 50, '2022-01-01'),
('Mouse', 'Electronics', 29.99, 200, '2022-01-05'),
('Keyboard', 'Electronics', 79.99, 150, '2022-01-10'),
('Monitor', 'Electronics', 299.99, 75, '2022-02-01'),
('USB Cable', 'Electronics', 9.99, 500, '2022-02-15'),
('T-Shirt', 'Clothing', 19.99, 300, '2022-03-01'),
('Jeans', 'Clothing', 59.99, 200, '2022-03-10'),
('Shoes', 'Clothing', 89.99, 150, '2022-03-15'),
('Coffee Maker', 'Home', 69.99, 80, '2022-04-01'),
('Blender', 'Home', 49.99, 100, '2022-04-10');

INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2023-01-10', 1099.98, 'delivered'),
(1, '2023-02-15', 79.99, 'delivered'),
(2, '2023-01-20', 299.99, 'delivered'),
(2, '2023-03-05', 29.99, 'shipped'),
(3, '2023-01-15', 1549.97, 'delivered'),
(3, '2023-04-10', 69.99, 'pending'),
(4, '2023-02-20', 89.99, 'delivered'),
(5, '2023-01-25', 999.99, 'delivered'),
(5, '2023-03-10', 89.99, 'shipped'),
(6, '2023-02-28', 449.98, 'delivered'),
(7, '2023-01-30', 2499.96, 'delivered'),
(7, '2023-04-05', 59.99, 'pending'),
(8, '2023-03-15', 19.99, 'cancelled'),
(9, '2023-02-10', 399.98, 'delivered'),
(10, '2023-03-20', 149.98, 'shipped');

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),
(1, 2, 1, 29.99),
(2, 3, 1, 79.99),
(3, 4, 1, 299.99),
(4, 2, 1, 29.99),
(5, 1, 1, 999.99),
(5, 5, 5, 49.99),
(6, 9, 1, 69.99),
(7, 8, 1, 89.99),
(8, 1, 1, 999.99),
(9, 8, 1, 89.99),
(10, 4, 1, 299.99),
(10, 6, 5, 99.99),
(11, 1, 2, 1999.98),
(11, 4, 1, 299.99),
(11, 6, 1, 19.99),
(12, 7, 1, 59.99),
(13, 6, 1, 19.99),
(14, 4, 1, 299.99),
(14, 2, 1, 29.99),
(15, 3, 1, 79.99),
(15, 7, 1, 69.99);

-- Verify
SELECT COUNT(*) as customer_count FROM customers;
SELECT COUNT(*) as product_count FROM products;
SELECT COUNT(*) as order_count FROM orders;
SELECT COUNT(*) as order_item_count FROM order_items;
