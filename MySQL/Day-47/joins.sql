-- =========================================
-- JOINS: EQUI JOIN, INNER JOIN,
-- NATURAL JOIN, CROSS JOIN
-- =========================================

CREATE DATABASE join_practice;
USE join_practice;


-- =========================================
-- 1. CREATE DEPARTMENT TABLE
-- =========================================

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- =========================================
-- 2. CREATE EMPLOYEE TABLE
-- =========================================

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);


-- =========================================
-- 3. INSERT DEPARTMENT DATA
-- =========================================

INSERT INTO department VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Sales');


-- =========================================
-- 4. INSERT EMPLOYEE DATA
-- =========================================

INSERT INTO employee VALUES
(101, 'Raju', 30000, 10),
(102, 'Harish', 40000, 20),
(103, 'Ramya', 35000, 10),
(104, 'Karim', 45000, 30),
(105, 'Kavya', 50000, 20);


-- =========================================
-- 5. DISPLAY TABLES
-- =========================================

SELECT * FROM employee;

SELECT * FROM department;


-- =========================================
-- 6. EQUI JOIN
-- Matching condition uses =
-- =========================================

SELECT
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id;


-- =========================================
-- 7. INNER JOIN
-- Returns only matching records
-- =========================================

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id;


-- =========================================
-- 8. NATURAL JOIN
-- Automatically joins columns having
-- the same column name
-- =========================================

SELECT
    emp_id,
    emp_name,
    salary,
    dept_name
FROM employee
NATURAL JOIN department;


-- =========================================
-- 9. CROSS JOIN
-- Returns every possible combination
-- =========================================

SELECT
    e.emp_name,
    d.dept_name
FROM employee e
CROSS JOIN department d;


-- =========================================
-- 10. EQUI JOIN USING WHERE
-- Old-style JOIN
-- =========================================

SELECT
    e.emp_name,
    d.dept_name
FROM employee e, department d
WHERE e.dept_id = d.dept_id;


-- =========================================
-- 11. INNER JOIN WITH WHERE
-- Find employees from IT department
-- =========================================

SELECT
    e.emp_name,
    e.salary,
    d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';


-- =========================================
-- 12. INNER JOIN WITH SALARY CONDITION
-- =========================================

SELECT
    e.emp_name,
    e.salary,
    d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE e.salary > 35000;


-- =========================================
-- 13. JOIN + GROUP BY
-- Count employees in each department
-- =========================================

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM department d
INNER JOIN employee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;