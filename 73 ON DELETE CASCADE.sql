DELETE FROM customers WHERE last_name = 'George';

DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

SELECT * FROM orders;

DELETE FROM customers WHERE last_name = 'George';

SELECT * FROM customers;
SELECT * FROM orders;
