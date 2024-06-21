CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    emp_position VARCHAR(50),
    emp_department VARCHAR(50),
    emp_salary INT
);

INSERT INTO Employees (emp_name, emp_position, emp_department, emp_salary) VALUES
('John Doe', 'Sales Manager', 'Sales', 75000),
('Jane Smith', 'Developer', 'IT', 60000),
('James Brown', 'Developer', 'IT', 62000),
('Jill White', 'Marketing Specialist', 'Marketing', 58000),
('Jack Black', 'Sales Associate', 'Sales', 50000),
('Jenny Green', 'Developer', 'IT', 61000);

SELECT emp_department, emp_name, emp_salary
FROM Employees e1
WHERE emp_salary = (
    SELECT MAX(emp_salary)
    FROM Employees e2
    WHERE e1.emp_department = e2.emp_department
);
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE,
    sale_amount INT,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
INSERT INTO Sales (sale_date, sale_amount, employee_id) VALUES
('2023-01-15', 5000, 1),
('2023-01-16', 7000, 1),
('2023-01-17', 4000, 2),
('2023-01-18', 3000, 3),
('2023-01-19', 5000, 1),
('2023-01-20', 6000, 2);
