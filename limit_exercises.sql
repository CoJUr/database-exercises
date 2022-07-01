use employees;

SELECT DISTINCT title
from titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
limit 10;

SELECT emp_no FROM salaries
ORDER BY salary desc
limit 5 OFFSET 45;

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT UNIX_TIMESTAMP();