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

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no IN (SELECT dept_manager.emp_no
                           FROM dept_manager
                           WHERE to_date LIKE '999%')
  AND employees.gender = 'F';


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

