-- Number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
-- Salary from low to high
SELECT *
FROM employees
ORDER BY salary ASC;
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;
-- Departments where total salary is greater than 200000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000
ORDER BY average_salary DESC;