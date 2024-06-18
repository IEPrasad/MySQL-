CREATE DATABASE PracticeDB;
USE PracticeDB;

CREATE TABLE Employee (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    emp_position VARCHAR(50),
    emp_department VARCHAR(50),
    emp_salary INT
);

INSERT INTO Employee (emp_name, emp_position, emp_department, emp_salary) VALUES 
('Eranda Prasad', 'Manager', 'Sales', 5000),
('Isuru Sampath', 'Developer', 'IT', 4000),
('Isuru Viraj', 'Player', 'Music', 3000),
('Lal maama', 'Developer', 'IT', 4200),
('Nihal mama', 'Marketing Specialist', 'Marketing', 5800),
('Jenny Green', 'Developer', 'IT', 4300);


CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_category VARCHAR(50),
    product_price DECIMAL(10, 2)
);

INSERT INTO Products (product_name, product_category, product_price) VALUES
('Laptop', 'Electronics', 999.99),
('Smartphone', 'Electronics', 699.99),
('Desk Chair', 'Furniture', 120.00),
('Standing Desk', 'Furniture', 450.00),
('Coffee Maker', 'Appliances', 79.99),
('Blender', 'Appliances', 49.99);


--  Query: Select all employees in the 'IT' department.
SELECT * FROM Employee WHERE emp_department = 'IT';

-- Select all products that cost more than $100.
SELECT * FROM Products WHERE product_price > 100;


-- Select all employees with a salary less than or equal to $4000.
SELECT * FROM Employee WHERE emp_salary >= 4000;

-- Query: Select all employees whose name has 's' as the second character.
SELECT * FROM employee 
WHERE emp_name 
LIKE '_s%';

-- Select all products whose name contains the substring 'Desk'.
SELECT * FROM Products 
WHERE product_name 
LIKE '%Desk%';

-- Select all employees whose name ends with 'a'.
SELECT * FROM employee 
WHERE emp_name 
LIKE '%a';

-- ^^ and this is shows how to find something with end charachter *** 


-- Practice Questions with Expected Output

-- Select all products that cost more than $100.
SELECT * FROM Products 
WHERE product_price > 100;

--  Select all employees with a salary less than or equal to $2000.
SELECT * FROM Employee 
WHERE emp_salary >= 2000;

-- Select all products whose category contains the word 'Electronics'.
SELECT * FROM products
WHERE product_category 
LIKE '%Electronics%';

-- Select all employees whose position ends with 'Manager'.
SELECT * FROM Employee
WHERE emp_position 
LIKE '%Manager';

-- Select all products whose name contains the substring 'Desk'.
SELECT * FROM products 
WHERE product_name
LIKE '%Desk%';

-- Select all employees whose name ends with 'n'.
SELECT * FROM Employee
WHERE emp_name 
LIKE '%n';

/*
Summary

These queries and questions provide a variety of ways to practice using the WHERE clause, 
LIKE operator, and wildcards in MySQL. 
They help you understand how to filter data based on different conditions and patterns.

-- 



drop database PracticeDB;
*/




