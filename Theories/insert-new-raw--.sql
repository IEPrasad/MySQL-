-- 1) Insert a New Row

INSERT INTO Employees (employee_id, emp_name, department_id)
VALUES (3, 'Alice Johnson', 1);


-- 2) Update a Row

UPDATE Employees
SET emp_name = 'Alicia Johnson'
WHERE employee_id = 3;


-- 3) Alter a Table
-- To modify the structure of an existing table, you can use the ALTER TABLE statement.


-- Add a column
ALTER TABLE Employees
ADD COLUMN emp_email VARCHAR(100);

-- Drop a column
ALTER TABLE Employees
DROP COLUMN emp_email;

-- Modify a column data type
ALTER TABLE Employees
MODIFY COLUMN emp_salary DECIMAL(10, 2);


-- 4) Grouping Data
-- To group rows that have the same values in specified columns into summary rows, you can use the GROUP BY statement.

-- Example: Grouping employees by department_id and counting the number of employees in each department.

-- Group employees by department_id and count the number of employees in each department

-- Group by department_id and count employees
SELECT department_id, COUNT(*) AS num_employees
FROM Employees
GROUP BY department_id;

-- Group by car_id and calculate total sales
SELECT car_id, SUM(sale_amount) AS total_sales
FROM Sales
GROUP BY car_id;

















