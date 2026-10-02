CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees (emp_name, department, salary)
VALUES ('Rahul', 'IT', 55000);
INSERT INTO employees (emp_name, department, salary)
VALUES ('Priya', 'HR', 45000);
INSERT INTO employees (emp_name, department, salary)
VALUES ('Arjun', 'Finance', 60000);
SELECT * FROM employees;
INSERT INTO employees (emp_name, department, salary)
VALUES
('Sneha', 'IT', 52000),
('Kiran', 'Sales', 48000),
('Anil', 'HR', 50000);
INSERT INTO employees
VALUES (1, 'John', 'IT', 60000);
CREATE TABLE table_name (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);