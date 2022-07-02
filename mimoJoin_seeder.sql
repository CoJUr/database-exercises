use mimo;

show tables;

TRUNCATE TABLE students;

INSERT INTO students(id, name)
VALUES  (0147, 'Lisa Jones'),
        (1008, 'Luz garcia'),
        (0267, 'Lin Wong');

TRUNCATE TABLE enrolled;

INSERT INTO enrolled(student_id, class)
VALUES (0147, 'Math'),
       (1008, 'Physics'),
        (1008, 'History');




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
ON artists.artist_id = albums.artist_id