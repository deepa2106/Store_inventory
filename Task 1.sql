-- Selects which schema to conenct to.
USE sql_store;
-- displays all results from the table customers.
SELECT * FROM customers WHERE CUSTOMER_ID=1 order by first_name;
-- displays surname, first name, points, and points multiplied by 10 plus 100 from the table customers.
SELECT last_name, first_name, points, (points * 10) + 100 FROM CUSTOMERS;
-- displays surname, first name, points, and points plus 10 and then multiplied by 100, with column name new_price from the table customers.
SELECT last_name, first_name, points, (points + 10) * 100 AS 'discount_factor' FROM CUSTOMERS; 
-- displays name, unit price, and new price column from the table products.
SELECT name, unit_price, (unit_price * 1.1) AS 'new_price' FROM PRODUCTS;
-- displays all customers who have birthdays after 01/01/1990
SELECT * FROM CUSTOMERS where birth_date > '1990-01-01';
-- displays product with the most amount of stock.
SELECT name FROM PRODUCTS WHERE quantity_in_stock = (SELECT MAX(quantity_in_stock) FROM PRODUCTS);
-- displays name of most expensive product.
SELECT name FROM PRODUCTS WHERE unit_price = (SELECT MAX(unit_price) FROM PRODUCTS);
-- displays first name, last name, address and the birthdate of the oldest customer.
SELECT first_name, last_name, address, birth_date FROM CUSTOMERS WHERE birth_date = (SELECT MIN(birth_date) FROM CUSTOMERS);