-- 1) Insert a New Row

INSERT INTO Employees (employee_id, emp_name, department_id)
VALUES (3, 'Alice Johnson', 1);


-- 2) Update a Row

UPDATE Employees
SET emp_name = 'Alicia Johnson'
WHERE employee_id = 3;


-- 3) Alter a Table

-- Add a column
ALTER TABLE Employees
ADD COLUMN emp_email VARCHAR(100);

-- Drop a column
ALTER TABLE Employees
DROP COLUMN emp_email;

-- Modify a column data type
ALTER TABLE Employees
MODIFY COLUMN emp_salary DECIMAL(10, 2);
