use mimo;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id int unsigned not null,
    name varchar(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS enrolled;

CREATE TABLE enrolled (
                          student_id INT unsigned not null,
                          class varchar(50),
                          PRIMARY KEY (class)
);


DROP TABLE IF EXISTS artists;

CREATE TABLE artists(artist_id         INT NOT NULL,
                    name                VARCHAR(50) NOT NULL DEFAULT 'UNKNOWN',
                    PRIMARY KEY (artist_id)
                    );

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(artist_id           INT UNSIGNED NOT NULL,
                    title               VARCHAR(50) NOT NULL
                   );


# SUB QUERIES:
DROP TABLE IF EXISTS customers;

CREATE TABLE customers(first_name       VARCHAR(50) NOT NULL,
                        last_name       VARCHAR(50) NOT NULL,
                        email           varchar(100) not null,
                         age            int);

INSERT INTO customers (first_name, last_name, email, age)
VALUES ('James', 'Butt', 'jbutt@gmail.com', 76),
       ('Josephine', 'Darakjy', 'Josephine_darakjy@darakjy.org',41 ),
       ('Ian', 'Paprocki', 'Ipaprocki@hotmail.com', 46),
       ('Donette', 'Foller', 'donette.foller@cox.net', 18),
       ('Simona', 'Morasca', 'simona@morasca.com', 33);

# subqueries : combining queries to select customers with age greater than average  ...
SELECT AVG(age)
FROM customers;

SELECT first_name, last_name, email
FROM customers
WHERE age > 49;

# becomes...
SELECT first_name, last_name, email FROM customers
WHERE age >
      (SELECT AVG(age)) FROM customers);
# subquery must return only 1 value to be able to use a comparison operator!

DROP TABLE IF EXISTS receipts;

CREATE TABLE receipts(store_name       VARCHAR(50) NOT NULL,
                       employee_num       INT NOT NULL,
                       total           decimal(10, 2) not null );

show tables;
select * from receipts;

INSERT INTO receipts (store_name, employee_num, total)
VALUES ('IER', 1324, 56.74),
       ('Save and Shop', 5656, 98.94),
       ('Quick Fill', 97, 60),
       ('Paperclips', 44978, 238.3),
       ('Save and Shop', 5560, 125.43);
# sub-q 2: use min to select the employee number of the receipts with the lowest total
SELECT employee_num as cheapskate FROM receipts
WHERE total = (SELECT MIN(total) FROM receipts);

# select emp num of the receipts with total less than the avg
SELECT employee_num FROM receipts
WHERE total <
      (SELECT AVG(total) FROM receipts);


#          subqueries from DIFFERENT TABLES
DROP TABLE IF EXISTS age_statistics;
CREATE TABLE age_statistics (age        INT,
                            description    VARCHAR(150));

INSERT INTO age_statistics VALUES (91, 'max user age'),
                                  (33, 'average user age'),
                                  (18, 'min user age');

SELECT age FROM age_statistics
WHERE description = 'average user age';
# ^used as sub-query for:
SELECT *
FROM customers
WHERE age >
      (SELECT age
       FROM age_statistics
       WHERE description = 'average user age');