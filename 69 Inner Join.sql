-- Inner Joins
-- The order doesn't mastter here
SELECt * FROM customers JOIN orders ON customers.id = orders.customer_id;

SELECt first_name, last_name, order_date, amount FROM customers JOIN orders ON customers.id = orders.customer_id;

SELECT * FROM orders JOIN customers ON customers.id = orders.customer_id;

SELECT * FROM orders INNER JOIN customers ON customers.id = orders.customer_id;
