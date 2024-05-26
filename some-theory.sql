-- 1. Insert Query
-- To add new records into a table, you use the INSERT INTO statement.

INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_id)
VALUES (101, 'John', 'Doe', 'john.doe@example.com', '2023-05-01', 'IT_PROG');



-- 2. Update Query
-- To update existing records in a table, you use the UPDATE statement.

UPDATE employees
SET email = 'john.doe@newexample.com', job_id = 'SR_PROG'
WHERE employee_id = 101;



-- 3. Delete Query
-- To delete records from a table, you use the DELETE FROM statement.

DELETE FROM employees
WHERE employee_id = 101;


-- 4. Select Query
-- To retrieve data from a table, you use the SELECT statement.

SELECT employee_id, first_name, last_name, email, hire_date, job_id
FROM employees
WHERE employee_id = 101;


-- 5. Create Table Query
-- To create a new table in the database, you use the CREATE TABLE statement.

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    job_id VARCHAR(10)
);



-- 6. Drop Table Query
-- To delete a table and all of its data, you use the DROP TABLE statement.

DROP TABLE employees;


-- 7. Alter Table Query
-- To modify an existing table structure, you use the ALTER TABLE statement.

  Add a new column:
    ALTER TABLE employees
    ADD COLUMN phone_number VARCHAR(15);

  Drop an existing column:
    ALTER TABLE employees
    DROP COLUMN phone_number;

  Modify an existing column:
    ALTER TABLE employees
    MODIFY COLUMN email VARCHAR(150);



-- 8. Truncate Table Query
-- To remove all records from a table without deleting the table itself, you use the TRUNCATE TABLE statement.

TRUNCATE TABLE employees;










