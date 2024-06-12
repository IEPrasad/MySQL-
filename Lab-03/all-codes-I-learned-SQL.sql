-- 1) Create a database 
CREATE DATABASE SampleDatabase_name;

-- 2) Delete database 
DROP DATABASE SampleDatabase_name

-- 3) Create a table 
CREATE TABLE Sample_table (
  samp_id VARCHAR(10) PRIMARY KEY,
  samp_name VARCHAR(50),
  samp_date DATE,
  samp_income INT
);

-- 4) Create a table with foreign key
CREATE TABLE Sample_Foreign_key (
  for_id VARCHAR(10) PRIMARY KEY,
  for_name VARCHAR(50),
  for_date DATE,
  for_income INT,
  samp_id VARCHAR(10)
  FOREIGN KEY (samp_id) REFERENCES Sample_table(samp_id)
); 

-- 5) Insert data or update data into table 

INSERT INTO Sample_table (samp_id, samp_name, samp_date, samp_income) 
VALUES ('S001', 'Eranda', '10-12-2020', 2450000);

-- 6) Take total value from a table 

SELECT
  SUM(for_income)
FROM Sample_Foreign_key;

-- 7) DELETE some data from a table 

DELETE FROM Sample_Foreign_key 
WHERE for_id = 'S001';


------- IMPORTANT CODES -------

-- 1) Find employees whose names start with 'J':

SELECT * FROM Employees 
WHERE emp_name LIKE 'J%';

-- Or we can use --->>
SELECT emp_name, emp_position FROM Employees 
WHERE emp_name LIKE 'J%';


-- 2) Find the car varieties whose model names contain 'Civic':

SELECT * FROM CarVarieties
WHERE car_model LIKE 'Civic';


-- 3) Find the sales records where the sale ID starts with 'S2':

SELECT * FROM Sales
WHERE sale_id LIKE 'S2%';


-- 4) Find dependents whose relation is not 'Spouse':

SELECT * FROM Dependents 
WHERE depen_relation NOT LIKE 'Spouse%';

-- 5) Find employees whose position contains 'Rep' and whose salary is greater than 45000:

SELECT * FROM Employees
WHERE emp_position LIKE '%Rep%' 
AND emp_salary > 1000;


-- 6) Find car varieties whose brand is 'Honda' and whose color is not 'Red':

SELECT * FROM CarVarieties
WHERE car_brand LIKE 'Honda'
AND car_color NOT LIKE 'Red';


