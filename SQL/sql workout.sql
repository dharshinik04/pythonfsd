DROP DATABASE IF EXISTS `ecom_store`;
CREATE DATABASE `ecom_store`; 
USE `ecom_store`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `ecom_products` (
  `product_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `ecom_products` VALUES (1,'Credit Card');
INSERT INTO `ecom_products` VALUES (2,'Cash');
INSERT INTO `ecom_products` VALUES (3,'PayPal');
INSERT INTO `ecom_products` VALUES (4,'Wire Transfer');

CREATE TABLE `ecom_customers` (
  `customers_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `customers_name` varchar(50) NOT NULL,
  `customers_phone` varchar(10),
  PRIMARY KEY (`customers_id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `ecom_customers` VALUES (1,'Credit Card','1234589766');
INSERT INTO `ecom_customers` VALUES (2,'Cash','1234568976');
INSERT INTO `ecom_customers` VALUES (3,'PayPal','1234576566');
INSERT INTO `ecom_customers` VALUES (4,'Wire Transfer','1234765566');
-- to make a self join
USE sql_hr;
SELECT 
    e.first_name, m.first_name
FROM
    employees e
        JOIN
    employees m ON e.reports_to = m.employee_id;
-- compoumd join
USE sql_store;
SELECT 
    *
FROM
    order_items oi
        JOIN
    order_item_notes ON oi.order_id = oin.order_id
        AND oi.product_id = oin.product_id;
-- implicit way of writing inner join
-- not recommended
SELECT * FROM orders o, customers c WHERE o.customer_id = c.customers_id;

-- outer join LEFT & RIGHT joins
SELECT 
    *
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;
-- right joins
SELECT 
    *
FROM
    customers c
        RIGHT JOIN
    orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

USE ecom_store; 
SELECT 
    *
FROM
    ecom_customers c
        LEFT JOIN
    orders o ON c.customers_id = o.customer_id;
    
USE ecom_store;
SELECT 
    orders.order_id, ecom_products.product_name
FROM
    orders 
        JOIN ecom_products ON orders.product_id = ecom_products.product_id;
    
-- Return a table/query with first row telling us first  half of 2019 
USE sql_invoicing;
SELECT 
  'first half of 2019' AS 'date range',
  sum(invoice_total),
  sum(payment_total),
  sum(invoice_total-payment_total)
FROM invoices
WHERE 
invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
union select 
    'second half of 2019' AS 'date range',
    sum(invoice_total),
    sum(payment_total),
    sum(invoice_total-payment_total)
    FROM
      invoices
	WHERE
      invoice_date BETWEEN '2019-07-01' AND '2019-012-31'
	union select 
     'total' AS 'date range',
     sum(invoice_total),
     sum(payment_total),
     sum(invoice_total- payment_total)
     FROM 
      invoices;
    
-- next 
USE sql_store;
SELECT 
    o.order_id AS 'Order ID',
    o.order_date,
    c.first_name AS 'Customer',
    sh.name AS 'Shipper',
    os.name AS 'Status'
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id
        LEFT JOIN
    shippers sh ON sh.shipper_id = o.shipper_id
        JOIN
    order_statuses os ON os.order_status_id = o.status;

----- ecom_customers
USE sql_store;
SELECT customer_id, first_name AS 'First Name', last_name AS ' Last Name' FROM customers;
SELECT 
    *
FROM
    customers
WHERE
    points > 500;
----- products
SELECT *FROM sql_store.products WHERE quantity_in_stock = 49 OR quantity_in_stock = 38 OR quantity_in_stock = 72;
USE sql_store;
SELECT *FROM customers;
SELECT *FROM customer WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *FROM customers WHERE points BETWEEN '1500' AND '2000';
SELECT * FROM customers WHERE first_name LIKE '%n%' AND points >1500;
SELECT * FROM customers WHERE last_name LIKE 'b%y';
 SELECT * FROM customers WHERE  city LIKE '%ohio%' AND last_name LIKE '%ay';
 SELECT * FROM customers WHERE lats_name REGEXP 'field';
 SELECT * FROM orders;
 SELECT * FROM orders WHERE shipped_date IS NULL OR shipper_id IS null;
 -- now get all orders ythat are not shipped yet - on orders table
 SELECT * FROM customers LIMIT 3;
 SELECT * FROM customers ORDER BY first_name, lat_name, city DESC;
 SELECT 
    *
FROM
    customers
WHERE
    birth_date BETWEEN '1960-01-01' AND '1980-01-01'
        AND points > 2000
ORDER BY first_name
LIMIT 3;
SELECT 
    CONCAT(first_name, CONCAT(' ', last_name)) AS 'fullname',
    points / 10 * 5
FROM
    customers;
    INSERT INTO customers (first_name, last_name, birth_date, address, city, state, points)
    VALUES ('Dharshini', 'K', '2000-09-04', 'address', 'chennai', 'TN', '100')
    
-- ecom_customers

USE ecom_store;
INSERT INTO ecom_customers (customers_name, customers_phone)
VALUES ("Dharshu", 1436778965),("Ash", 1234567897), ("ram", 1234567897), ("shar",1234567897), ("dhars",1234567897),("dinesh",1234567897);

CREATE TABLE orders (
         `customer_id` TINYINT(5) NOT NULL AUTO_INCREMENT, 
         `order_id` TINYINT(5),
         `product_id` TINYINT(5),
         PRIMARY KEY(`customer_id`));
 
INSERT INTO orders (customer_id,order_id,product_id) 
VALUES(1,101,5), (2,102,6), (3,103,7), (4,104,8);

create table orders (id tinyint(2), customer_id varchar(20), product_id varchar(20),
primary key(id));
USE ecom_store;
SELECT 
    o.customers_id, o.order_id, o.product_id
FROM
    orders o
        JOIN
    customers_id oi ON o.order_id = oi.order_id;


                    
-- orders
USE sql_store;
SELECT 
    o.order_id, o.status, oi.product_id, oi.quantity
FROM
    orders o
        JOIN
    order_items oi ON o.order_id = oi.order_id;
-- Complex query with multiple joins
SELECT 
    o.order_id, o.status, oi.product_id, oi.quantity
FROM
    orders o
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    order_statuses os ON o.status = os.order_status_id;
    
    

