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