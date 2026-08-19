
CREATE TABLE customer_orders(
    order_id INT PRIMARY KEY,           
    customer_name VARCHAR(100),         
    product VARCHAR(50),                
    category VARCHAR(50),              
    quantity INT,                      
    unit_price DECIMAL(10,2),          
    order_date DATE,                   
    region VARCHAR(50),                 
    status VARCHAR(20),              
    sales_rep VARCHAR(50)             
);

INSERT INTO customer_orders VALUES
(1001, 'Mokgana Supplies', 'Laptop', 'Electronics', 2, 12500.00, '2026-01-05', 'Gauteng', 'Completed', 'Thabo'),
(1002, 'Bright Office', 'Office Chair', 'Furniture', 8, 1850.00, '2026-01-07', 'Gauteng', 'Completed', 'Zanele'),
(1003, 'Kopano Printers', 'Monitor', 'Electronics', 5, 3200.00, '2026-01-09', 'Limpopo', 'Pending', 'Kgotsa'),
(1004, 'Ubuntu Designs', 'Desk', 'Furniture', 4, 4200.00, '2026-01-12', 'Gauteng', 'Completed', 'Lerato'),
(1005, 'Mvelo Services', 'Printer', 'Electronics', 3, 5400.00, '2026-01-14', 'Mpumalanga', 'Cancelled', 'Sipho'),
(1006, 'NoteBook Consulting', 'Notebook Pack', 'Stationery', 20, 180.00, '2026-01-16', 'Free State', 'Completed', 'Naledi'),
(1007, 'Siyakha School', 'Projector', 'Electronics', 2, 8900.00, '2026-01-19', 'Gauteng', 'Completed', 'Mpho'),
(1008, 'Mabaso Legal', 'Printer', 'Electronics', 1, 5000.00, '2026-01-21', 'KwaZulu-Natal', 'Completed', 'Thabo'),
(1009, 'Thuto College', 'Office Chair', 'Furniture', 12, 1850.00, '2026-01-24', 'North West', 'Completed', 'Thabo'),
(1010, 'Kganya Clinic', 'Laptop', 'Electronics', 4, 12500.00, '2026-01-27', 'Western Cape', 'Completed', 'Zanele'),
(1011, 'Mandla Logistics', 'Desk', 'Furniture', 6, 4200.00, '2026-02-02', 'Gauteng', 'Pending', 'Kgotsa'),
(1012, 'Pula Accounting', 'Notebook', 'Stationery', 35, 180.00, '2026-02-05', 'Free State', 'Completed', 'Lerato'),
(1013, 'Lesedi Health', 'Monitor', 'Electronics', 7, 3200.00, '2026-02-08', 'Gauteng', 'Completed', 'Sipho'),
(1014, 'Bophelo Office', 'Office Chair', 'Furniture', 10, 1850.00, '2026-02-11', 'Limpopo', 'Cancelled', 'Naledi'),
(1015, 'Rea Vaya Services', 'Projector', 'Electronics', 3, 8900.00, '2026-02-14', 'Gauteng', 'Completed', 'Mpho'),
(1016, 'Masakhane NGO', 'Notebook Pack', 'Stationery', 50, 180.00, '2026-02-18', 'Eastern Cape', 'Pending', 'Kgotsa'),
(1017, 'Tshiamo Events', 'Laptop', 'Electronics', 1, 12500.00, '2026-02-21', 'North West', 'Completed', 'Thabo'),
(1018, 'Imbokodo Architects', 'Desk', 'Furniture', 9, 4200.00, '2026-02-25', 'Western Cape', 'Completed', 'Zanele'),
(1019, 'Vuka Training', 'Monitor', 'Electronics', 6, 3200.00, '2026-03-01', 'Gauteng', 'Pending', 'Kgotsa'),
(1020, 'Sisonke Retail', 'Printer', 'Electronics', 5, 5400.00, '2026-03-04', 'KwaZulu-Natal', 'Completed', 'Lerato');
### *3. CHECK YOUR TABLE*
-- See all data
SELECT * FROM customer_orders;





SELECT * FROM customer_orders;



SELECT * FROM customer_orders WHERE status = 'Completed';


SELECT order_id, customer_name, quantity * unit_price AS total_amount 
FROM customer_orders;


SELECT * FROM customer_orders WHERE region = 'Gauteng';

-- 4. Orders handled by Thabo
SELECT * FROM customer_orders WHERE sales_rep = 'Thabo';

SELECT * FROM customer_orders;


