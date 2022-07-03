use mimo;

show tables;

TRUNCATE TABLE students;
INSERT INTO students(id, name)
VALUES  (0147, 'Lisa Jones'),
        (1008, 'Luz garcia'),
        (0267, 'Lin Wong');

select * FROM students;

SELECT * FROM enrolled;


TRUNCATE TABLE enrolled;
INSERT INTO enrolled(student_id, class)
VALUES (0147, 'Math'),
       (1008, 'Physics'),
        (1008, 'History');

# left joins set
TRUNCATE TABLE enrolled;
INSERT INTO enrolled(student_id, class)
VALUES (0147, 'Math'),
       (1008, 'Physics'),
       (1222, 'History');



SELECT * FROM students
INNER JOIN enrolled
ON enrolled.student_id = students.id;


select students.name, enrolled.class
FROM students
INNER JOIN enrolled
on students.id = enrolled.student_id;




TRUNCATE TABLE albums;

INSERT INTO albums(artist_id, title)
VALUES (1, 'Blue Train'),
       (1, 'Giant Steps'),
       (2, 'Baltimore');

# SELECT * FROM albums;

TRUNCATE TABLE artists;

INSERT INTO artists(artist_id, name)
VALUES (1, 'John Coltrane'),
       (2, 'Nina Simone'),
       (3, 'Bill Evans');

SELECT * FROM artists
join albums
ON albums.artist_id = artists.artist_id;
# ==
SELECT * FROM artists
inner join albums
ON albums.artist_id = artists.artist_id;


SELECT artists.name, albums.title
FROM artists
INNER JOIN albums
ON artists.artist_id = albums.artist_id;

select artists.artist_id, artists.name, albums.title
FROM artists
INNER JOIN albums
ON artists.artist_id = albums.artist_id;


# aliasing columns in result table
SELECT students.name AS student, enrolled.class
FROM students
INNER JOIN enrolled
ON students.id = enrolled.student_id;


# aliasing TABLES - must refer to the aliases everywhere in the query ...
SELECT *
FROM students AS s
INNER JOIN enrolled AS e
ON s.id = e.student_id;

SELECT s.name, e.class
FROM students AS s
INNER JOIN enrolled AS e
ON s.id = e.student_id;

SELECT art.name, alb.title
FROM artists as art
INNER JOIN albums as alb
ON art.artist_id = alb.artist_id;

# ...


# LEFT JOIN: gets matching rows but still keep ones w/o match from 1st table
SELECT *
FROM students
LEFT JOIN enrolled
ON students.id = enrolled.student_id
# right table items only appear if have a match in the left

SELECT * FROM artists
LEFT JOIN albums
ON artists.artist_id = albums.artist_id;

