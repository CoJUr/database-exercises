
#  a view: a virtual table  based on  result-set of a statement
#     allows: structuring data in a way which feels intuitive to users
#           : user-level restriction of access to data
#           : summarize data from various tables and use to generate reports
#           : use of joins and any amount of complexity
#           : ALWAYS SHOWS UP TO DATE DATA! data is recreated w/ each query

# CREATE VIEW view_name AS
# SELECT column_name
# FROM table_name
# WHERE condition;

use employees;

CREATE VIEW List1 AS
    SELECT emp_no, salary
FROM salaries;

# Now, query the list

SELECT * FROM List1;


# updating views:
# CREATE OR REPLACE VIEW view_name AS
#     SELECT column_name(s) FROM table_name
# WHERE condition;


CREATE OR REPLACE VIEW List1 AS
    SELECT from_date, to_date, salary
FROM salaries;

select * from List1;

# delete view with DROP VIEW

DROP VIEW List1;