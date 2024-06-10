CREATE DATABASE CarSales;
USE CarSales;

-- This is creating CarVarieties table

CREATE TABLE CarVarieties (
	car_id VARCHAR(10) PRIMARY KEY,
    car_name VARCHAR(50),
    car_brand VARCHAR(50),
    car_model VARCHAR(50),
    car_year YEAR,
    car_prise INT,
    car_color VARCHAR(30)
);

CREATE TABLE Employees (
	employee_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(60),
    emp_position VARCHAR(50),
    emp_salary INT,
    emp_department VARCHAR(50),
    Emp_joined_date DATE
);

CREATE TABLE Sales (
	sale_id VARCHAR(10),
    sale_date DATE,
    sale_amount INT,
    employee_id VARCHAR(10),
	car_id VARCHAR(10),
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (car_id) REFERENCES CarVarieties(car_id)
);

CREATE TABLE Dependents (
	dependent_id VARCHAR(10) PRIMARY KEY,
    depen_name VARCHAR(50),
    depen_relation VARCHAR(50),
    depen_dob DATE,
    deopen_gender VARCHAR(10),
    employee_id VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);


