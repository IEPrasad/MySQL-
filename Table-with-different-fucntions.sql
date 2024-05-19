-- Create the database
CREATE DATABASE CarSales;

-- Use the created database
USE CarSales;

-- Create the CarVarieties table
CREATE TABLE CarVarieties (
    car_id VARCHAR(10) PRIMARY KEY,
    car_name VARCHAR(50),
    car_brand VARCHAR(50),
    car_model VARCHAR(50),
    car_year YEAR,
    car_price INT,
    car_color VARCHAR(20)
);

-- Insert initial data into the CarVarieties table
INSERT INTO CarVarieties (car_id, car_name, car_brand, car_model, car_year, car_price, car_color) VALUES
('C1', 'Corolla', 'Toyota', 'Corolla', 2021, 1300000, 'Blue'),
('C2', 'Civic', 'Honda', 'Civic', 2021, 2000000, 'Red'),
('C3', 'Accord', 'Honda', 'Accord', 2023, 3200000, 'Black');

-- Create the Employees table
CREATE TABLE Employees (
    employee_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_position VARCHAR(50),
    emp_salary INT,
    emp_department VARCHAR(50),
    emp_joined_date DATE
);

-- Insert initial data into the Employees table
INSERT INTO Employees (employee_id, emp_name, emp_position, emp_salary, emp_department, emp_joined_date) VALUES
('E002', 'Johnson', 'Sales Manager', 60000, 'Sales', '2021-05-18'),
('E005', 'Jacqueline', 'Sales Rep', 40000, 'Sales', '2022-06-01'),
('E007', 'Michael', 'Mechanic', 50000, 'Maintenance', '2022-04-01');

-- Tasks

-- Task 1: Obtain the list of all the employees
SELECT * FROM Employees;

-- Task 2: Obtain the list of stationeries available in stock and their available quantities
SELECT car_name, car_price FROM CarVarieties;

-- Task 3: Obtain the list of employees who live in Gampaha district
SELECT * FROM Employees WHERE emp_department = 'Sales';

-- Task 4: Identify the first name, last name, employee ID and telephone number of all employees who live in either Kandy district or Kalutara district
SELECT employee_id, emp_name, emp_position FROM Employees WHERE emp_department = 'Sales';

-- Task 5: List stationeries with more than 100 stationeries in stock
SELECT car_name, car_price FROM CarVarieties WHERE car_price > 100000;

-- Task 6: Find the number of employees for each district
SELECT emp_department, COUNT(*) as num_employees FROM Employees GROUP BY emp_department;

-- Task 7: The selling price of a stationery is the Cost of a stationery plus 28%. List the stationery name, stationery number and selling price for all stationeries
SELECT car_name, car_id, car_price * 1.28 AS selling_price FROM CarVarieties;

-- Task 8: List the Order ID, order date and stationer count of all orders that had more than or equal to three items
SELECT Order_Id, Order_Date, COUNT(Stat_No) as stationer_count 
FROM Order_Item
GROUP BY Order_Id, Order_Date
HAVING stationer_count >= 3;

-- Task 9: Delete the employees who did not place any order after 01.04.2021
DELETE FROM Employees
WHERE employee_id NOT IN (
    SELECT DISTINCT Emp_Id FROM Orders
    WHERE Order_Date > '2021-04-01'
);

-- Task 10: Update the cost of all ‘Calculators’ by Rs. 20/-
UPDATE CarVarieties
SET car_price = car_price + 20
WHERE car_name = 'Calculators';
