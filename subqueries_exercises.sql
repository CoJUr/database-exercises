use employees;

# 1
SELECT * from employees
where hire_date like (
    SELECT hire_date
    from employees
    where emp_no = 101010
    );

# 2   with/without group by for total / unique titles
SELECT title
from titles
WHERE emp_no IN (
    SELECT employees.emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
    )
GROUP BY title;

