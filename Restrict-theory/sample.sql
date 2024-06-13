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
