use employees;

# find info for depts where dept named Customer Service
select dept_no FROM departments WHERE  dept_name = 'Customer Service';

SELECT emp_no FROM dept_manager WHERE dept_no IN (
    SELECT dept_no FROM departments WHERE dept_name = 'Sales'
    );
# or ....
SELECT emp_no FROM dept_manager WHERE dept_no IN (
    'd009'
);
# but inaccurate

SELECT (SELECT emp_no FROM dept_manager LIMIT 1) as emp_no;


# get dept managers emp number of the sales department
SELECT emp_no from dept_manager dm WHERE dept_no IN (
    select dept_no FROM departments WHERE dept_name = 'Sales'
                                      AND to_date > now()
    );


# Get FIRST TWO employee's salaries, concatenated
SELECT emp_no FROM employees LIMIT 2;

SELECT CONCAT(
    (SELECT MAX(salary) FROM salaries
                           WHERE emp_no = 10001
), ' ', (SELECT MAX(salary) FROM salaries WHERE emp_no = 10002), ' '
           ) AS TopPeople;


# get names of emps with th