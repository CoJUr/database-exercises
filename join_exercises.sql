use employees;

# SELECT dept_name, dept_manager.emp_no as dept_manager_num, employees.emp_no
# FROM departments, dept_manager, employees;
#
#
# SELECT employees.emp_no, CONCAT(employees.first_name, ' ', employees.last_name) as emp_fullName,
#        dept_emp.emp_no as DeptManagerNum
# FROM employees JOIN dept_emp
# ON employees.emp_no = dept_emp.emp_no





SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;



# get depts specifically managed by women

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' and e.gender = 'F'
ORDER BY d.dept_name;


# current titles of emps working in customer service dept

SELECT title, count(*) from departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN titles on titles.emp_no = dept_emp.emp_no
WHERE titles.to_date LIKE '999%' AND dept_emp.to_date LIKE '999%'
AND departments.dept_name = 'Customer Service'
GROUP BY title;



# get current salaries of managers

SELECT  d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager, s.salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date LIKE '999%'
ORDER BY d.dept_name;


