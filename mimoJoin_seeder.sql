use mimo;

show tables;

TRUNCATE TABLE students;

INSERT INTO students(id, name)
VALUES  (0147, 'Lisa Jones'),
        (1008, 'Luz garcia'),
        (0267, 'Lin Wong');

TRUNCATE TABLE enrolled;

INSERT INTO enrolled(id, class)
VALUES (0147, 'Math'),
       (1008, 'Physics');

SELECT * FROM students
JOIN enrolled
ON enrolled.id = students.id;


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