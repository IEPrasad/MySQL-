-- Create the employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    hire_date DATE
);

-- Add new columns to employees table
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(20);

-- Delete columns from employees table
ALTER TABLE employees
DROP COLUMN birth_date;

ALTER TABLE employees
DROP COLUMN hire_date;

-- Create the employees1 table
CREATE TABLE employees1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    hire_date DATE
);


