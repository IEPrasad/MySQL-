CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customers
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

DELETE FROM Customers WHERE CustomerID = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails 
-- (`your_database_name`.`Orders`, CONSTRAINT `fk_orders_customers` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`))



The RESTRICT keyword in MySQL is used as an option for FOREIGN KEY constraints. It determines the behavior when an attempt is made to delete or update a row to which existing foreign key references point.
Definition

The RESTRICT option ensures that a DELETE or UPDATE operation on a parent table will be restricted if there are any rows in the child table that reference the row being deleted or updated. In other words, the operation will be prevented if it would result in orphaned rows in the child table.
Sample Code

Here's an example to illustrate how the RESTRICT option works in practice:
Step-by-Step Example:

    Create the Database and Tables:


-- Create the database
CREATE DATABASE CarSales;

-- Use the database
USE CarSales;

-- Create CarVarieties table
CREATE TABLE CarVarieties (
    car_id VARCHAR(10) PRIMARY KEY,
    car_name VARCHAR(50),
    car_brand VARCHAR(50),
    car_model VARCHAR(50),
    car_year YEAR,
    car_price INT,
    car_color VARCHAR(20)
);

-- Create Employees table
CREATE TABLE Employees (
    employee_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_position VARCHAR(50),
    emp_salary INT,
    emp_department VARCHAR(50),
    emp_joined_date DATE
);

-- Create Sales table with foreign keys using RESTRICT
CREATE TABLE Sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    sale_date DATE,
    sale_amount INT,
    employee_id VARCHAR(10),
    car_id VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (car_id) REFERENCES CarVarieties(car_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);


Insert Data into the Tables:

-- Insert data into CarVarieties
INSERT INTO CarVarieties (car_id, car_name, car_brand, car_model, car_year, car_price, car_color)
VALUES ('C1', 'Model S', 'Tesla', 'S', 2020, 80000, 'Red');

-- Insert data into Employees
INSERT INTO Employees (employee_id, emp_name, emp_position, emp_salary, emp_department, emp_joined_date)
VALUES ('E1', 'John Doe', 'Sales Manager', 75000, 'Sales', '2018-03-12');

-- Insert data into Sales
INSERT INTO Sales (sale_id, sale_date, sale_amount, employee_id, car_id)
VALUES ('S1', '2022-05-01', 75000, 'E1', 'C1');


Attempt to Delete or Update Parent Table Rows:

-- Attempt to delete a row from CarVarieties that is referenced in Sales
DELETE FROM CarVarieties WHERE car_id = 'C1';
-- This will fail with a foreign key constraint error due to RESTRICT

-- Attempt to update a row in Employees that is referenced in Sales
UPDATE Employees SET employee_id = 'E2' WHERE employee_id = 'E1';
-- This will also fail with a foreign key constraint error due to RESTRICT




Explanation

    ON DELETE RESTRICT: This prevents the deletion of a row in the parent table (Employees or CarVarieties) if there are corresponding rows in the Sales table. For example, trying to delete a car (car_id = 'C1') will fail if there is a sale involving that car.

    ON UPDATE RESTRICT: This prevents the updating of a primary key value in the parent table if there are corresponding rows in the Sales table. For example, trying to change the employee_id from 'E1' to 'E2' will fail if there is a sale involving the employee 'E1'.

Summary

The RESTRICT option is useful when you want to ensure that rows in parent tables cannot be deleted or updated if they are being referenced by rows in child tables, thereby maintaining referential integrity in your database.

