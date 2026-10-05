-- ==========================================
-- MYSQL STRING FUNCTIONS
-- ==========================================

-- Assume:
-- employees(employee_id, employee_name, department, city, salary, experience)


-- 1. UPPER() - Convert to uppercase
SELECT UPPER(employee_name) AS name_upper
FROM employees;


-- 2. LOWER() - Convert to lowercase
SELECT LOWER(employee_name) AS name_lower
FROM employees;


-- 3. LENGTH() - Find length of string
SELECT employee_name, LENGTH(employee_name) AS name_length
FROM employees;


-- 4. CHAR_LENGTH() - Number of characters
SELECT employee_name, CHAR_LENGTH(employee_name) AS character_count
FROM employees;


-- 5. CONCAT() - Join strings
SELECT CONCAT(employee_name, ' - ', department) AS employee_details
FROM employees;


-- 6. CONCAT_WS() - Join strings with separator
SELECT CONCAT_WS(' | ', employee_name, department, city) AS employee_details
FROM employees;


-- 7. SUBSTRING() - Extract part of a string
SELECT employee_name, SUBSTRING(employee_name, 1, 3) AS short_name
FROM employees;


-- 8. LEFT() - Get characters from left
SELECT employee_name, LEFT(employee_name, 3) AS first_three
FROM employees;


-- 9. RIGHT() - Get characters from right
SELECT employee_name, RIGHT(employee_name, 3) AS last_three
FROM employees;


-- 10. TRIM() - Remove spaces from both sides
SELECT TRIM(employee_name) AS clean_name
FROM employees;


-- 11. LTRIM() - Remove spaces from left
SELECT LTRIM(employee_name) AS clean_name
FROM employees;


-- 12. RTRIM() - Remove spaces from right
SELECT RTRIM(employee_name) AS clean_name
FROM employees;


-- 13. REPLACE() - Replace text
SELECT REPLACE(department, 'IT', 'Information Technology') AS department
FROM employees;


-- 14. REVERSE() - Reverse a string
SELECT employee_name, REVERSE(employee_name) AS reversed_name
FROM employees;


-- 15. LOCATE() - Find position of text
SELECT employee_name, LOCATE('a', employee_name) AS position
FROM employees;


-- 16. INSTR() - Find position of text
SELECT employee_name, INSTR(employee_name, 'a') AS position
FROM employees;


-- 17. LPAD() - Add characters to left
SELECT employee_id, LPAD(employee_id, 5, '0') AS formatted_id
FROM employees;


-- 18. RPAD() - Add characters to right
SELECT employee_id, RPAD(employee_id, 5, '0') AS formatted_id
FROM employees;


-- ==========================================
-- MYSQL NUMERIC FUNCTIONS
-- ==========================================


-- 19. ABS() - Absolute value
SELECT ABS(-500) AS absolute_value;


-- 20. ROUND() - Round number
SELECT ROUND(45678.567, 2) AS rounded_value;


-- 21. CEIL() / CEILING() - Round up
SELECT CEIL(45678.12) AS ceiling_value;


-- 22. FLOOR() - Round down
SELECT FLOOR(45678.89) AS floor_value;


-- 23. MOD() - Remainder
SELECT MOD(10, 3) AS remainder;


-- 24. POWER() - Raise number to a power
SELECT POWER(2, 3) AS power_value;


-- 25. SQRT() - Square root
SELECT SQRT(144) AS square_root;


-- 26. SIGN() - Returns sign of number
SELECT SIGN(-100) AS sign_value;


-- 27. TRUNCATE() - Remove decimal places
SELECT TRUNCATE(45678.9876, 2) AS truncated_value;


-- 28. RAND() - Generate random number
SELECT RAND() AS random_number;


-- 29. MIN() - Minimum value
SELECT MIN(salary) AS minimum_salary
FROM employees;


-- 30. MAX() - Maximum value
SELECT MAX(salary) AS maximum_salary
FROM employees;


-- 31. SUM() - Total
SELECT SUM(salary) AS total_salary
FROM employees;


-- 32. AVG() - Average
SELECT AVG(salary) AS average_salary
FROM employees;


-- 33. COUNT() - Count rows
SELECT COUNT(*) AS employee_count
FROM employees;


-- ==========================================
-- STRING + NUMERIC FUNCTIONS TOGETHER
-- ==========================================

SELECT
    UPPER(employee_name) AS employee_name,
    LENGTH(employee_name) AS name_length,
    CONCAT(city, ' - ', department) AS location_department,
    ROUND(salary, 0) AS rounded_salary,
    salary * 12 AS annual_salary
FROM employees;
SELECT DISTINCT department
FROM employees;