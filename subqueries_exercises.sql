use employees;

# 1
SELECT *
from employees
where hire_date like (SELECT hire_date
                      from employees
                      where emp_no = 101010);

# 2   with/without group by for total / unique titles
SELECT title
from titles
WHERE emp_no IN (SELECT employees.emp_no
                 FROM employees
                 WHERE employees.first_name = 'Aamod')
GROUP BY title;

# 2 walkthru:
SELECT * from employees where first_name = 'Aamod';
SELECT DISTINCT title from titles WHERE emp_no IN
    (SELECT emp_no
     FROM employees
     WHERE first_name = 'Aamod');



# 3 Find all current dept managers who are female
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN (SELECT dept_manager.emp_no
                           FROM dept_manager
                           WHERE to_date LIKE '999%')
  AND employees.gender = 'F';

# 3 walkthru
# SELECT * FROM dept_manager where to_date = '9999-01-01';
SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN
    (SELECT emp_no FROM dept_manager where to_date = '9999-01-01');

# bonus 1  find dept names currently having female managers

SELECT dept_name
from departments
WHERE dept_no IN (SELECT dept_manager.dept_no
                  FROM dept_manager
                  WHERE dept_manager.emp_no IN (select dept_manager.emp_no
                                                from dept_manager
                                                WHERE dept_manager.to_date > now()
                                                  AND dept_manager.emp_no IN (select employees.emp_no
                                                                              FROM employees
                                                                              where employees.gender = 'F')))


