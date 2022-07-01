use employees;

# SELECT * FROM employees WHERE FIRST_NAME IN('Irena', 'Vidya', 'Maya');
SELECT *
FROM employees
WHERE gender = 'M'
  AND (
            FIRST_NAME = 'Irena'
        OR FIRST_NAME = 'Vidya'
        OR FIRST_NAME = 'Maya');


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND LAST_NAME NOT LIKE '%QU%';


