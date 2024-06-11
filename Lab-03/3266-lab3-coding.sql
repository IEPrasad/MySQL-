

CREATE DATABASE CarSales;
USE CarSales;

-- Create all tables

CREATE TABLE CarVarieties (
  car_id VARCHAR(10) PRIMARY KEY,
  car_name VARCHAR(50),
  car_brand VARCHAR(50),
  car_model VARCHAR(50),
  car_year YEAR,
  car_price INT,
  car_color VARCHAR(20)
);

CREATE TABLE Employees (
  employee_id VARCHAR(10) PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_salary INT,
  emp_department VARCHAR(50),
  emp_joined_data DATA
);

CREATE TABLE Sales (
  sale_id VARCHAR(10) PRIMARY KEY,
  sale_date DATE,
  sale_amount INT,
  employee_id VARCHAR(10),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (car_id) REFERENCES CarVarieties(car_id)
);

CREATE TABLE Dependents (
  dependent_id VARCHAR(10) PRIMARY KEY,
  depen_name VARCHAR(50),
  dpen_relation VARCHAR(50),
  depen_dop DATE,
  depen_gender VARCHAR(10),
  employee_id VARCHAR(10),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);


-- Insert initial data into the tables






