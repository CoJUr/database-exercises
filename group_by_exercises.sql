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



SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 115;



SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;
# now with alias:
SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;



SELECT count(*), CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;


#
# SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
# FROM employees
# WHERE hire_date='1985-01-01'
#   AND full_name='Arie Staelin';
# cant do alias in where clause


# 'test' table of student and grade column - want to count how many recieved a, b c
# could do SELECT COUNT(GRADE) FROM test WHEE grade = 'A';
# but only counts students who got A

# count how many students got grade each via GROUP BY :
# SELECT grade, count(*) FROM test
# GROUP BY grade;

# GROUPING BY also gets rid of dupes (distinct style).
# 2 "A's" in the column, but only A B C show:
# SELECT grade FROM test GROUP BY grade;


# the following will group user items by their value in the country column:
# SELECT email, COUNT(*)
# FROM user
# GROUP BY country;

# prints 2 columns; grade and count(*) :   A = 2  B = 1  C = 1
# SELECT grade, count(*) FROM test
# group by grade;
    # more readable with alias for count(*) column... cols= 'grade' and 'students'
    # SELECT grade, COUNT(*) AS students FROM test
    # GROUP BY grade;


# select group with exactly 1 user (aliased count())
# SELECT country, count(*) AS users FROM user
# GROUP BY country HAVING users =1; (// GROUP BY country HAVING country = 'Spain')


# selecting groups only with country val starting with E
# SELECT country, COUNT(*) AS users FROM user
# GROUP BY country HAVING country LIKE 'E%';


# can select any property to build the condition in having, like <> 2 to filter out groups
# SELECT grade, COUNT(*) AS students from test
# GROUP BY grade HAVING students <> 2;