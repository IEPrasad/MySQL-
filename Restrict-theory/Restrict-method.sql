1. Meaning 

The "RESTRICT" method in MySQL is used part of a foreign key constraint to control what happens
when an attempt is made to delete or update a row to which foreign keys are pointing. 
When "RESTRICT" is used, it prevents the deletion or update of a parent row if any child rows
reference it. Essentially, it enforces referential integrity by ensuring that 
no orphaned rows are created in the child table.

2. What Kind of Query Uses "RESTRICT"

The "RESTRICT" method is used in "ON DELETE" and "ON UPDATE" clauses 
when defining foreign key constraints. IT specifies that an attempt to 
delete or update a row will be restricted if there are any dependent 
foreign key references.

3. Importance of "RESTRICT"

* Data Integrity: Ensures that data integrity is maintained by 
  preventing deletions or updates that would leave orphaned records
  in related tables.

* Error Prevention: Helps to avoid accidental deletions or updates 
  that could corrupt the relational database structure.

* Controlled Deletion/Update: Provides a way to explicitly control the 
  behavior of deletions and updates in a relational database.
  

4. Examples for Understanding "RESTIRCT"

1. Creating Tables with Foreign Key Constraints

-- Create Parent table
CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

-- Create Child table with foreign key constraint
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

/* In this example, the "RESTRICT" keyword is used to ensure that you cannot
 delete or update a row in the "Deparments" table if there are 
 corresponding rows in the "Employees" table.
*/

Example 2: Trying to Delete a Parent Row

-- Insert sample data into Departments 
INSERT INTO Departments (department_id, department_name) 
VALUES (1, 'Sales'), (2, 'IT');

-- Insert sample data into Employees
INSERT INTO Employees (employee_id, emp_name, department_id) 
VALUES (1, 'John Doe', 1), (2, 'Jane Smith', 2);

-- Attempt to delete a department that has employees
DELETE FROM Departments WHERE department_id = 1;
-- This will fail with error because of the RESTRICT constraint


Example 3: Trying to update Parent Row 

-- Attempt to update a department_id that is referenced in Employees
UPDATE Deparments SET department_id = 3 WHERE department_id = 1;
-- This will fail with an error because of the RESTRICT constraint 


Example 4: Valid Delete and Update Operations

-- Delete an employee first 
DELETE FROM Employee WHERE employee_id = 1;

-- Now delete department (this will succeed because no employee reference in anymore)
DELETE FROM Departments WHERE department_id = 1;

-- Insert the employee back with a valid department reference
INSERT INTO Employees (employee_id, emp_name, department_id) 
  VALUES (1, "John Doe", 2);

-- Update the department name (this will suceed because it does not affect the department_id)
UPDATE Departments SET department_name = "Information Technology" WHERE department_id = 2;














































