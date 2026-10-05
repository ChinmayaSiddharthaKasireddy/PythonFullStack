-- ==========================================
-- SQL OPERATORS
-- ==========================================

-- Assume table:
-- employees(employee_id, employee_name, department, city, salary, experience)


-- 1. ARITHMETIC OPERATORS
-- +, -, *, /, %

SELECT salary + 5000 AS increased_salary
FROM employees;

SELECT salary - 5000 AS decreased_salary
FROM employees;

SELECT salary * 12 AS annual_salary
FROM employees;

SELECT salary / 12 AS monthly_salary
FROM employees;

SELECT salary % 1000 AS remainder
FROM employees;


-- 2. COMPARISON OPERATORS
-- =, !=, <>, >, <, >=, <=

SELECT *
FROM employees
WHERE salary = 60000;

SELECT *
FROM employees
WHERE salary != 60000;

SELECT *
FROM employees
WHERE salary <> 60000;

SELECT *
FROM employees
WHERE salary > 60000;

SELECT *
FROM employees
WHERE salary < 60000;

SELECT *
FROM employees
WHERE salary >= 60000;

SELECT *
FROM employees
WHERE salary <= 60000;


-- 3. LOGICAL OPERATORS
-- AND, OR, NOT

SELECT *
FROM employees
WHERE salary > 60000
AND experience > 3;

SELECT *
FROM employees
WHERE city = 'Hyderabad'
OR city = 'Chennai';

SELECT *
FROM employees
WHERE NOT city = 'Hyderabad';


-- 4. BETWEEN OPERATOR

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 80000;


-- 5. NOT BETWEEN

SELECT *
FROM employees
WHERE salary NOT BETWEEN 50000 AND 80000;


-- 6. IN OPERATOR

SELECT *
FROM employees
WHERE city IN ('Hyderabad', 'Chennai', 'Bangalore');


-- 7. NOT IN OPERATOR

SELECT *
FROM employees
WHERE city NOT IN ('Hyderabad', 'Chennai');


-- 8. LIKE OPERATOR

-- Names starting with R
SELECT *
FROM employees
WHERE employee_name LIKE 'R%';

-- Names ending with a
SELECT *
FROM employees
WHERE employee_name LIKE '%a';

-- Names containing 'an'
SELECT *
FROM employees
WHERE employee_name LIKE '%an%';

-- Second character is 'a'
SELECT *
FROM employees
WHERE employee_name LIKE '_a%';


-- 9. NOT LIKE

SELECT *
FROM employees
WHERE employee_name NOT LIKE 'R%';


-- 10. IS NULL

SELECT *
FROM employees
WHERE salary IS NULL;


-- 11. IS NOT NULL

SELECT *
FROM employees
WHERE salary IS NOT NULL;


-- 12. ASSIGNMENT OPERATOR
-- Used with UPDATE

UPDATE employees
SET salary = 70000
WHERE employee_id = 101;


-- 13. MULTIPLE OPERATORS TOGETHER

SELECT *
FROM employees
WHERE salary > 50000
AND experience >= 3
AND city IN ('Hyderabad', 'Chennai')
ORDER BY salary DESC;


-- 14. USING NOT WITH IN

SELECT *
FROM employees
WHERE city NOT IN ('Hyderabad', 'Chennai')
AND salary > 60000;