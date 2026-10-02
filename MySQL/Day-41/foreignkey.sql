CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    dept_id INT,

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
SELECT * FROM employees;
UPDATE departments
SET dept_id = 10
WHERE dept_id = 1;
SELECT * FROM employees;
DELETE FROM departments
WHERE dept_id = 10;
SELECT * FROM employees;