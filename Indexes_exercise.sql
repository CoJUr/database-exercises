use employees;


show tables;

describe current_dept_emp;
show index from current_dept_emp;
# none

describe departments;
show index from departments;
# primary = dept_no     unique dept_name


describe dept_emp;
show index from dept_emp;
# both have 2 primary key - emp_no and dept_no
describe dept_manager;
show index from dept_manager;


describe employees;
show index from employees;
# emp_no

describe salaries;
show index from salaries;
# emp_no and from_date

describe titles;
# emp_no, title AND from_date


use codeup_test_db;

alter table albums
ADD UNIQUE (name, artist);
describe albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES
         ('big poppa', 'I''m alive', 12-25-22, 'rap', 30.3);