-- you should practice about restrict method and cascaude 

CREATE DATABASE WEBSITE;
USE WEBSITE;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    favorite_website VARCHAR(100)
);


INSERT INTO customers (customer_id, last_name, first_name, favorite_website)
VALUES (001, 'Prasad', 'Jayawardhana', 'chatgpt.com'),
(002, 'Sampath', 'Jayawardhana', 'google.com'),
(003, 'Viraj', 'Jayawardhana', 'facebook.com');

SELECT * FROM customers;

SELECT last_name, favorite_website FROM customers;





