-- Duduzile Mthembu
-- MODULE 5: FINAL ASSESSMENT 100 MARKS
-- BRIGHTMART RETAIL SOLUTIONS


-- SECTION A: DATABASE SETUP 
-- Scenario 1: 


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);
-- DATA: 8 Customers
INSERT INTO customers VALUES
(1, 'Thabo Mokoena', 'Johannesburg', 'thabo@gmail.com'),
(2, 'Lerato Dlamini', 'Pretoria', 'lerato@gmail.com'),
(3, 'Sipho Nkosi', 'Johannesburg', 'sipho@gmail.com'),
(4, 'Naledi Molefe', 'Soweto', 'naledi@gmail.com'),
(5, 'Ayanda Khumalo', 'Pretoria', NULL),
(6, 'Mpho Ndlovu', 'Johannesburg', 'mpho@gmail.com'),
(7, 'Zanele Maseko', 'Midrand', 'zanele@gmail.com'),
(8, 'Kabelo Sithole', 'Soweto', NULL);

SELECT* FROM customers;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- DATA: 8 Products
INSERT INTO products VALUES
(101, 'Laptop Bag', 'Electronics', 650.00),
(102, 'Wireless Mouse', 'Electronics', 350.00),
(103, 'Office Chair', 'Furniture', 1800.00),
(104, 'Office Desk', 'Furniture', 2200.00),
(105, 'Notebook Pack', 'Stationery', 120.00),
(106, 'Keyboard', 'Electronics', 550.00),
(107, 'Desk Lamp', 'Furniture', 750.00),
(108, 'Office Pen Set', 'Stationery', 280.00);

SELECT* FROM products;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


-- DATA: 12 Orders
INSERT INTO orders VALUES
(201, 1, 101, 2, '2026-08-01', 'Completed'),
(202, 2, 103, 1, '2026-08-02', 'Completed'),
(203, 3, 102, 3, '2026-08-03', 'Pending'),
(204, 4, 105, 5, '2026-08-03', 'Completed'),
(205, 5, 106, 2, '2026-08-04', 'Completed'),
(206, 1, 104, 1, '2026-08-05', 'Completed'),
(207, 6, 107, 2, '2026-08-06', 'Pending'),
(208, 7, 108, 4, '2026-08-07', 'Completed'),
(209, 8, 102, 1, '2026-08-08', 'Cancelled'),
(210, 3, 101, 2, '2026-08-09', 'Completed'),
(211, 2, 106, 1, '2026-08-10', 'Completed'),
(212, 6, 105, 3, '2026-08-11', 'Completed');
 
SELECT* FROM orders;

-- SECTION B: 


-- Scenario 2: Regional Customer Locations 
SELECT DISTINCT city FROM customers ORDER BY city;

-- Scenario 3: Regional Promotion - 
SELECT customer_name, city, email
FROM customers
WHERE city IN ('Johannesburg', 'Pretoria');


-- SECTION C: 10 MARKS


-- Scenario 4: Customer Name Search - 
SELECT customer_id, customer_name, city, email
FROM customers
WHERE customer_name LIKE 'L%';

-- Scenario 5: Missing Contact Details 
SELECT customer_id, customer_name, city
FROM customers
WHERE email IS NULL;

-- Scenario 6: Product Review 
SELECT product_id,product_name, category, price
FROM products
WHERE category IN ('Electronics', 'Furniture')
AND price BETWEEN 500 AND 2000;

-- Scenario 7: Most Expensive Products 
SELECT product_id,product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Scenario 8: Pending Orders 
SELECT order_id, customer_id, product_id, quantity, order_date, status
FROM orders
WHERE status = 'Pending';


-- SECTION D: 


-- Scenario 9: High-Quantity Orders 
SELECT * FROM orders WHERE quantity > 2;

-- Scenario 10: Orders Requiring Attention 
SELECT order_id, customer_id, product_id, quantity, status
FROM orders
WHERE quantity > 2 OR status = 'Pending';

-- Scenario 11: Customer Purchase Report 
SELECT c.customer_id, c.customer_name,p.product_id, p.product_name, o.quantity, o.order_date, o.status
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Scenario 12: Completed Sales Report 
SELECT c.customer_name, p.product_name, o.quantity, o.order_date, o.status
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed';

-- Scenario 13: Johannesburg Sales 
SELECT c.customer_name, c.city, p.product_name, p.category, o.quantity, o.order_date
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE c.city = 'Johannesburg';

-- Scenario 14: Electronics Sales Investigation 
SELECT c.customer_name, p.product_name, p.category, o.quantity, o.order_date
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE p.category = 'Electronics';

-- Scenario 15: Customer Order History 
SELECT c.customer_name, p.product_name, o.quantity, o.order_date, o.status
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY c.customer_name ASC, o.order_date ASC;


-- SECTION E


-- Scenario 16: Sales Value per Order 
SELECT 
    o.order_id, c.customer_name, p.product_name, o.quantity, p.price,
    (p.price * o.quantity) AS Order_Value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Scenario 17: Completed Sales Value 
SELECT 
    c.customer_name, p.product_name, o.quantity, p.price,
    (p.price * o.quantity) AS Total_Sale_Value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed'
ORDER BY (p.price * o.quantity) DESC;

-- Scenario 18: Customer Spending Analysis 
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS Number_of_completed_orders,
    SUM(o.quantity) AS Total_quantity_purchased,
    SUM(p.price * o.quantity) AS Total_amount_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY SUM(p.price * o.quantity) DESC;


-- SECTION F: 10 MARKS


-- Scenario 19: High-Demand Products 
SELECT p.product_name, SUM(o.quantity) AS Total_quantity_ordered
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(o.quantity) > 4
ORDER BY SUM(o.quantity) DESC;

-- Scenario 20: Active Customers 
SELECT c.customer_name, COUNT(o.order_id) AS Number_of_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY COUNT(o.order_id) DESC;


-- SECTION G: 15 MARKS


-- Scenario 21: Regional Sales Performance 
SELECT 
    c.city,
    COUNT(o.order_id) AS number_of_completed_orders,
    SUM(o.quantity) AS total_units_purchased,
    SUM(p.price * o.quantity) AS total_sales_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY c.city
ORDER BY SUM(p.price * o.quantity) DESC;

-- Scenario 22: Executive Product Performance Report 
SELECT 
    p.product_name,
    p.category,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_units_sold,
    SUM(p.price * o.quantity) AS total_revenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
WHERE o.status = 'Completed'
GROUP BY p.product_id, p.product_name, p.category
HAVING SUM(o.quantity) > 2
ORDER BY SUM(p.price * o.quantity) DESC;


-- SECTION H

-- Scenario 23: Correct Product Price 
UPDATE products 
SET price = 700.00 
WHERE product_name = 'Laptop Bag';

-- Verify correction
SELECT product_name, price 
FROM products 
WHERE product_name = 'Laptop Bag';

-- Scenario 24: Remove Cancelled Order 
DELETE FROM orders 
WHERE order_id = 209;

SELECT* FROM orders;

--Verification
SELECT * FROM orders WHERE order_id = 209;
