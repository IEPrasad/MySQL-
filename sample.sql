-- you should practice about restrict method and cascaude 

CREATE DATABASE WEBSITE;
USE WEBSITE;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    favorite_website VARCHAR(100)
);
