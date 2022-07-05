use employees;

describe departments;
# primary = dept_no     unique dept_name


describe dept_emp;
# both have 2 primary key - emp_no and dept_no
describe dept_manager;


describe employees;
# emp_no

describe salaries;
# emp_no and from_date

describe titles;
# emp_no, title AND from_date


use codeup_test_db;

alter table albums
ADD UNIQUE (name, artist)