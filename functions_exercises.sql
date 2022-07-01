use employees;

# SELECT * FROM employees WHERE FIRST_NAME IN('Irena', 'Vidya', 'Maya');
SELECT *
FROM employees
WHERE gender = 'M'
  AND (
            FIRST_NAME = 'Irena'
        OR FIRST_NAME = 'Vidya'
        OR FIRST_NAME = 'Maya')
ORDER BY last_name, first_name;


SELECT *, concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no desc;


SELECT *, concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no DESC ;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND LAST_NAME NOT LIKE '%QU%';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *, datediff(hire_date, now()) as days_employeed FROM employees
where hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;


SELECT first_name FROM employees GROUP BY first_name;
# ==
select distinct first_name from employees;


SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;
# ==
SELECT DISTINCT last_name, first_name from employees
ORDER BY last_name, first_name;


SELECT COUNT(*) FROM employees;

# count the number of employees without a first name containing 'a', nulls excluded
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';



SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;


# 10 most common hire dates:
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;



