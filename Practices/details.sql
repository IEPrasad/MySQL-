-- -- CREATE DATABASE ERANDA;
-- -- USE ERANDA;

-- CREATE TABLE DETATILS (
-- 	ID_number INT(11) PRIMARY KEY,
--     name VARCHAR(100),
--     age INT(3),
--     birth_year YEAR
-- );

----- day 1---------

-- -- USE ERANDA;
-- CREATE TABLE DETAILS (
-- 	ID_number INT(11) PRIMARY KEY, 
--     name VARCHAR(100),
--     age INT(3),
--     shcool VARCHAR(100)
-- );


------ day 2 --------------


---------- day 3---------- vvvvvv

-- -- Use the specified database
-- USE eranda;

-- -- Create the customer table
-- CREATE TABLE customer (
--     customer_id INT(12) PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     salary INT(7),
--     department VARCHAR(40)
-- );

-- -- Insert data into the customer table
-- INSERT INTO customer (customer_id, name, age, salary, department) VALUES
--     (1001, 'Eranda', 22, 3000000, 'ICT'),
--     (1002, 'Suhani', 21, 2000000, 'Business'),
--     (1003, 'Malki', 22, 1000000, 'Dance'),
--     (1004, 'Safwan', 22, 3000000, 'ICT');

-- -- View data in the customer table
-- SELECT * FROM customer;

--------- Finaly solve the problem and now I can see the table data ------ 
------ day 4 ----------------

Create database era;
-- -- Use the specified database
use era;

-- -- Create the customer table
CREATE TABLE customer (
    customer_id INT(12) PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary INT(7),
    department VARCHAR(40)
);

-- -- Insert data into the customer table
INSERT INTO customer (customer_id, name, age, salary, department) VALUES
    (1001, 'Eranda', 22, 3000000, 'ICT'),
    (1002, 'Suhani', 21, 2000000, 'Business'),
    (1003, 'Malki', 22, 1000000, 'Dance'),
    (1004, 'Safwan', 22, 3000000, 'ICT');


