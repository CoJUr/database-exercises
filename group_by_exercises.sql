use employees;

SELECT DISTINCT title FROM titles;

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name, first_name;


SELECT last_name, COUNT(last_name) from employees
WHERE last_name like '%q%' AND
      last_name NOT LIKE '%qu%'
GROUP by last_name;


SELECT gender, count(*)
FROM employees
WHERE first_name In ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY gender;



SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 115;



SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;
# now with alias:
SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;



SELECT count(*), CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;



SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
FROM employees
WHERE hire_date='1985-01-01'
  AND full_name='Arie Staelin';
# cant do alias in where clause


