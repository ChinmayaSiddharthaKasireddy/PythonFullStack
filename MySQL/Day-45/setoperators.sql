-- =========================================
-- SET OPERATORS AND AUTO GENERATED COLUMNS
-- =========================================

CREATE DATABASE sql_practice;
USE sql_practice;


-- =========================================
-- 1. CREATE TABLES
-- =========================================

CREATE TABLE students1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE students2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


-- =========================================
-- 2. INSERT DATA
-- =========================================

INSERT INTO students1 (name, city) VALUES
('Raju', 'Hyderabad'),
('Harish', 'Mumbai'),
('Ramya', 'Delhi'),
('Kavya', 'Chennai');

INSERT INTO students2 (name, city) VALUES
('Ramya', 'Delhi'),
('Kavya', 'Chennai'),
('Karim', 'Pune'),
('Suresh', 'Bangalore');


-- =========================================
-- 3. DISPLAY TABLES
-- =========================================

SELECT * FROM students1;

SELECT * FROM students2;


-- =========================================
-- 4. UNION
-- Removes duplicate records
-- =========================================

SELECT name, city
FROM students1
UNION
SELECT name, city
FROM students2;


-- =========================================
-- 5. UNION ALL
-- Keeps duplicate records
-- =========================================

SELECT name, city
FROM students1
UNION ALL
SELECT name, city
FROM students2;


-- =========================================
-- 6. INTERSECT
-- Returns common records
-- =========================================

SELECT name, city
FROM students1
INTERSECT
SELECT name, city
FROM students2;


-- =========================================
-- 7. EXCEPT
-- Records in students1 but not students2
-- =========================================

SELECT name, city
FROM students1
EXCEPT
SELECT name, city
FROM students2;


-- =========================================
-- 8. REVERSE EXCEPT
-- Records in students2 but not students1
-- =========================================

SELECT name, city
FROM students2
EXCEPT
SELECT name, city
FROM students1;


-- =========================================
-- 9. AUTO_INCREMENT TABLE
-- =========================================

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);


-- =========================================
-- 10. INSERT WITHOUT AUTO_INCREMENT COLUMN
-- =========================================

INSERT INTO employees (emp_name, salary) VALUES
('Raju', 30000),
('Harish', 40000),
('Ramya', 35000),
('Karim', 45000);


-- =========================================
-- 11. DISPLAY EMPLOYEES
-- =========================================

SELECT * FROM employees;


-- =========================================
-- 12. INSERT ANOTHER EMPLOYEE
-- =========================================

INSERT INTO employees (emp_name, salary)
VALUES ('Kavya', 50000);


SELECT * FROM employees;


-- =========================================
-- 13. AUTO_INCREMENT STARTING FROM 100
-- =========================================

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
) AUTO_INCREMENT = 100;


-- =========================================
-- 14. INSERT PRODUCTS
-- =========================================

INSERT INTO products (product_name, price) VALUES
('Laptop', 60000),
('Mobile', 30000),
('Keyboard', 2000);


-- =========================================
-- 15. DISPLAY PRODUCTS
-- =========================================

SELECT * FROM products;