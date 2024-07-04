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

































