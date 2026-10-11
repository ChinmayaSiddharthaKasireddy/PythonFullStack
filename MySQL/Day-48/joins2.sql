-- =========================================
-- LEFT OUTER JOIN, RIGHT OUTER JOIN,
-- FULL OUTER JOIN, SELF JOIN
-- =========================================

CREATE DATABASE IF NOT EXISTS join_practice;
USE join_practice;

-- 1. CREATE TABLES

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);

-- 2. INSERT DEPARTMENT DATA

INSERT IGNORE INTO department VALUES
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Sales');

-- 3. INSERT EMPLOYEE DATA

INSERT IGNORE INTO employee VALUES
(101, 'Raju', 30000, 10),
(102, 'Harish', 40000, 20),
(103, 'Ramya', 35000, 10),
(104, 'Karim', 45000, 30),
(105, 'Kavya', 50000, 20);

-- =========================================
-- 4. LEFT OUTER JOIN
-- All employees and matching departments
-- =========================================

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employee e
LEFT OUTER JOIN department d
ON e.dept_id = d.dept_id;

-- =========================================
-- 5. RIGHT OUTER JOIN
-- All departments and matching employees
-- =========================================

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employee e
RIGHT OUTER JOIN department d
ON e.dept_id = d.dept_id;

-- =========================================
-- 6. FULL OUTER JOIN
-- MySQL uses LEFT JOIN + RIGHT JOIN with UNION
-- =========================================

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employee e
LEFT JOIN department d
ON e.dept_id = d.dept_id

UNION

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employee e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

-- =========================================
-- 7. CREATE SELF JOIN TABLE
-- =========================================

CREATE TABLE IF NOT EXISTS emp1 (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    mid INT
);

-- INSERT SELF JOIN DATA

INSERT IGNORE INTO emp1 VALUES
(1, 'Raju', NULL),
(2, 'Harish', 1),
(3, 'Ramya', 2),
(4, 'Karim', 1),
(5, 'Kavya', 3);

-- =========================================
-- 8. SELF JOIN
-- Each employee with their manager
-- =========================================

SELECT
    e.ename AS employee,
    m.ename AS manager
FROM emp1 e
LEFT JOIN emp1 m
ON e.mid = m.eid;

-- =========================================
-- 9. SELF JOIN
-- Employees reporting directly to Raju
-- =========================================

SELECT
    e.ename AS employee
FROM emp1 e
JOIN emp1 m
ON e.mid = m.eid
WHERE m.ename = 'Raju';

-- =========================================
-- 10. SELF JOIN
-- Employees without a manager
-- =========================================

SELECT
    ename AS employee
FROM emp1
WHERE mid IS NULL;

-- =========================================
-- 11. SELF JOIN
-- Managers who have employees
-- =========================================

SELECT DISTINCT
    m.ename AS manager
FROM emp1 e
JOIN emp1 m
ON e.mid = m.eid;