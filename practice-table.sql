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



/*
    The issue seems to be that you're trying to create a new table employees1 immediately after modifying the employees table without a proper delimiter or separator between the SQL statements.

When running multiple SQL commands in a script, you need to ensure each statement is correctly terminated, typically with a semicolon. In some SQL interfaces, it might also be necessary to use specific delimiters or to run commands individually rather than as a batch.

Here’s the corrected version of your script with proper delimiters:

sql

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

If you are using a SQL interface that requires explicit delimiters 
(like MySQL Workbench or certain command-line clients), you may need to ensure that each 
statement is terminated properly. Additionally, if running in a batch mode, make sure 
your SQL client is set to allow multiple statements.

For MySQL command-line client or similar environments, running the statements 
individually should work without issues.

If the problem persists, please provide more details about the environment you 
are using to run these SQL commands (e.g., MySQL Workbench, phpMyAdmin, command-line 
interface, etc.), as this might help in providing a more precise solution.
*/



