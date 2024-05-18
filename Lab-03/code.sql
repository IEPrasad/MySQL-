
-- The answers for the Lab test 03 in EEI 3266
-- Name: J.V.G.I.E Prasad
-- Reg : 523593409
-- S Num : s23010155


-- 1. Create the database “CarSales”
CREATE DATABASE CarSales;

-- Use the database CarSales
USE CarSales;

-- 2. Create all 4 tables with proper key constraints
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

-- Create Sales table
CREATE TABLE Sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    sale_date DATE,
    sale_amount INT,
    employee_id VARCHAR(10),
    car_id VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (car_id) REFERENCES CarVarieties(car_id)
);

-- Create Dependents table
CREATE TABLE Dependents (
    dependent_id VARCHAR(10) PRIMARY KEY,
    depen_name VARCHAR(50),
    depen_relation VARCHAR(50),
    depen_dob DATE,
    depen_gender VARCHAR(10),
    employee_id VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Insert initial data into CarVarieties
INSERT INTO CarVarieties (car_id, car_name, car_brand, car_model, car_year, car_price, car_color) VALUES
('C1', 'Corolla', 'Toyota', 'Corolla', 2021, 1300000, 'Blue'),
('C2', 'Civic', 'Honda', 'Civic', 2021, 2000000, 'Red'),
('C3', 'Accord', 'Honda', 'Accord', 2023, 3200000, 'Black');

-- Insert initial data into Employees
INSERT INTO Employees (employee_id, emp_name, emp_position, emp_salary, emp_department, emp_joined_date) VALUES
('E002', 'Johnson', 'Sales Manager', 60000, 'Sales', '2021-05-18'),
('E005', 'Jacqueline', 'Sales Rep', 40000, 'Sales', '2022-06-01'),
('E007', 'Michael', 'Mechanic', 50000, 'Maintenance', '2022-04-01');

-- Insert initial data into Sales
INSERT INTO Sales (sale_id, sale_date, sale_amount, employee_id, car_id) VALUES
('S1', '2021-04-02', 1300000, 'E005', 'C1'),
('S2', '2021-03-10', 2000000, 'E005', 'C2'),
('S3', '2023-07-19', 3200000, 'E002', 'C3');

-- Insert initial data into Dependents
INSERT INTO Dependents (dependent_id, depen_name, depen_relation, depen_dob, depen_gender, employee_id) VALUES
('D1', 'Mary', 'Spouse', '1995-07-13', 'Female', 'E002'),
('D2', 'Sarah', 'Child', '2024-03-10', 'Female', 'E002'),
('D3', 'Sophia', 'Child', '2022-07-10', 'Female', 'E005'),
('D4', 'David', 'Spouse', '1991-10-01', 'Male', 'E007');

-- 3. Show the tables created in the database CarSales
SHOW TABLES;

-- 4. Display the names and positions of all employees in Sales Department
SELECT emp_name, emp_position
FROM Employees
WHERE emp_department = 'Sales';

-- 5. List the names and prices of all car varieties
SELECT car_name, car_price
FROM CarVarieties;

-- 6. Find the names and relationships of dependents with employee id E002
SELECT depen_name, depen_relation
FROM Dependents
WHERE employee_id = 'E002';

-- 7. Find the most expensive Car in that company
SELECT car_name, car_price
FROM CarVarieties
ORDER BY car_price DESC
LIMIT 1;

-- 8. Find the total sales in 2021
SELECT SUM(sale_amount) AS total_sales_2021
FROM Sales
WHERE YEAR(sale_date) = 2021;

-- 9. If a new car is going to be added to the showroom, do the modifications in CarVarieties table
INSERT INTO CarVarieties (car_id, car_name, car_brand, car_model, car_year, car_price, car_color)
VALUES ('C4', 'Accord', 'Honda', 'Accord2022', 2022, 2500000, 'Grey');

-- 10. Delete the details of employee with employee id E007
DELETE FROM Employees
WHERE employee_id = 'E007';
