-- ZENITH FUTURE SKILLS HUB
-- MODULE 5: SQL | PRACTICAL DAY 4
-- Supermarket & Retail Management Database
-- Date: 20 August 2026



-- TABLE 1: CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- DATA: CUSTOMERS
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Thabo Mokoena', 'Johannesburg'),
(2, 'Lerato Dlamini', 'Pretoria'),
(3, 'Sipho Nkosi', 'Johannesburg'),
(4, 'Naledi Molefe', 'Soweto'),
(5, 'Ayanda Khumalo', 'Pretoria'),
(6, 'Mpho Ndlovu', 'Johannesburg'),
(7, 'Zanele Maseko', 'Midrand'),
(8, 'Kabelo Sithole', 'Soweto');
 
SELECT* FROM customers;

-- TABLE 2: PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- DATA: PRODUCTS
INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop Bag', 'Electronics', 650.00),
(102, 'Wireless Mouse', 'Electronics', 350.00),
(103, 'Office Chair', 'Furniture', 1200.00),
(104, 'Notebook', 'Stationery', 80.00),
(105, 'Backpack', 'Stationery', 450.00),
(106, 'Keyboard', 'Electronics', 550.00),
(107, 'Desk Lamp', 'Furniture', 750.00),
(108, 'Water Bottle', 'Lifestyle', 180.00);

SELECT* FROM products;
-- TABLE 3: ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);



-- DATA: ORDERS
INSERT INTO orders VALUES
(201, 1, 101, 1, 'Completed'),
(202, 2, 103, 2, 'Completed'),
(203, 3, 102, 2, 'Pending'),
(204, 4, 105, 1, 'Completed'),
(205, 5, 106, 2, 'Completed'),
(206, 1, 104, 5, 'Completed'),
(207, 6, 107, 1, 'Pending'),
(208, 7, 108, 3, 'Completed'),
(209, 8, 102, 1, 'Cancelled'),
(210, 3, 101, 2, 'Completed');

SELECT* FROM orders;


-- PART C: BUSINESS SCENARIOS

-- Scenario 1: Customer Information
-- Customers who live in Johannesburg
SELECT customer_name, city 
FROM customers 
WHERE city = 'Johannesburg';

-- Scenario 2: Product Selection
-- Electronics and Furniture products with prices
SELECT product_name, category, price 
FROM products 
WHERE category IN ('Electronics', 'Furniture');

-- Scenario 3: Price Review
-- Products that cost between R300 and R800
SELECT product_id, product_name, category, price 
FROM products 
WHERE price BETWEEN 300 AND 800;

-- Scenario 4: Most Expensive Products
-- Order by most expensive first
SELECT product_name, price 
FROM products 
ORDER BY price DESC;

-- Scenario 5: Customer Orders
-- Which customers placed orders and order number
SELECT DISTINCT c.customer_name, o.order_id
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Scenario 6: Order Details
-- Customer name, product, quantity, order status
SELECT c.customer_name, p.product_name, o.quantity, o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Scenario 7: Completed Orders
SELECT c.customer_name, p.product_name, o.quantity, o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.order_status = 'Completed';

-- Scenario 8: Customer Activity
-- How many orders each customer placed
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Scenario 9: Product Popularity
-- Products ordered most, highest quantity first
SELECT p.product_name, SUM(o.quantity) AS total_quantity_ordered
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY SUM(o.quantity) DESC;

-- Scenario 10: High-Volume Products
-- Products where total quantity ordered > 2
SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(o.quantity) > 2;

-- Scenario 11: Johannesburg Sales
SELECT c.customer_name, p.product_name, o.quantity, o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE c.city = 'Johannesburg';

-- Scenario 12: Pending Orders
SELECT c.customer_name, p.product_name, o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.order_status = 'Pending';

-- Scenario 13: Price Correction
-- Update Laptop Bag price to R700.00
UPDATE products 
SET price = 700.00 
WHERE product_name = 'Laptop Bag';

-- Confirm the update
SELECT product_name, price 
FROM products 
WHERE product_name = 'Laptop Bag';

-- Scenario 14: Order Cancellation
-- Remove order 209
DELETE FROM orders WHERE order_id = 209;

SELECT * FROM orders WHERE order_id = 209;

-- Scenario 15: Management Report
-- Each customer, products ordered, quantities. Alphabetical by customer
SELECT c.customer_name, p.product_name, o.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY c.customer_name ASC;

-- Scenario 16: Final Business Question
-- Products with greatest demand by total quantity ordered
SELECT p.product_name, SUM(o.quantity) AS total_quantity_ordered
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY SUM(o.quantity) DESC;
