Foreign Key Constraints in MySQL 

Foreign key constraints enforce referential integrity between tables.
When a row in the parent table is deleted or updated, the foreign key 
constraint determines what happens to the related rows in the child
table.

'ON DELETE' and 'ON UPDATE' Actions

1. CASCADE

Action: Automatically propagates the delete or update operation from 
the parent table to the child table.

Use Case: Suitable when child records should be automatically deleted
or updated when the parent record is removed modified.

Example:

-- Create Parent table
CREATE TABLE Departments (
  department_id INT PRIMARY KEY, 
  department_name VARCHAR(50)
);

-- Create Child table with  CASCADE
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY, 
  emp_name VARCHAR(50),
  department_id INT, 
  FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insert data
INSERT INTO Departments (department_id, department_name) 
  VALUES (1, 'Sales'), (2, 'IT');

INSERT INTO Employees (employee_id, emp_name, department_id) 
  VALUES (1, 'John Doe', 1), (2, 'Jane Smith', 2);

-- Delete a department
DELETE FROM Departments WHERE department_id = 1;
-- This will also delete 'John Doe' from Employees

-- Update a department_id
UPDATE Departments SET department_id = 3 WHERE department_id = 2; 
-- This will also update 'Jane Smith's department_id to 3


2. SET NULL 

Action: Sets the foreign key column(s) in the child table to "NULL" when the parent 
ro is deleted or updated.

Use Case: Appropriate when the relationship should be removed but the 
child records should remain.

Example: 

-- Create Child table with SET NULL 
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE SET NULL UPDATE SET NULL
);

-- Insert data
INSERT INTO Departments (department_id, department_name) 
  VALUES (1, 'Sales'), (2, 'IT');
INSERT INTO Employees (employee_id, emp_name, department_id) 
  VALUES (1, 'John Doe', 1), (2, 'Jane Smith', 2);

-- Delete a department
DELETE FROM Departments WHERE department_id = 1;
-- This will set 'John Doe's department_id to NULL

-- Update a department_id 
UPDATE Departments SET department_id = 3 WHERE department_id = 3;
-- This will set 'Jane Smith's department_id to NULL 


3. SET DEFAULT Example

-- Create Parent table with default department
CREATE TABLE Departments (
  department_id INT PRIAMRY KEY,
  department_name VARCHAR(50)
);

-- Create Child table with foreign key constraint
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department_id INT DEFAULT 0,
  FOREIGN KEY (department_id) PREFERENCES Departments(department_id) ON DELETE SET DEFAULT ON UPDATE SET DEFAULT
);

-- Insert data
INSERT INTO Departments (department_id, department_name) VALUES (1, 'Sales'), (2, 'IT');
INSERT ITNO Employees (employee_id, emp_name, department_id) VALUES (1, 'John Doe', 1), (2, 'Jane Smith', 2);

-- Deleting a department will set departemnt_id to default (0) for related employees
DELETE FROM Departments WHERE department_id = 1;
-- Updating a department will set department_id to default (0) for related employees
UPDATE Departments SET department_id = 3 WHERE department_id = 2;













