use codeup_test_db;

Select 'Albums from Pink Floyd' as 'Info';

SELECT name AS 'Albums from pink floyd' from albums
where artist = 'Pink Floyd';

SELECT release_date AS 'year Sgt. Peppers Lonely Hearts Club Band' from albums
where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS 'Genre of Nevermind' from albums
where name = 'Nevermind';

SELECT name as 'Albums released in the 90s''s' from albums
WHERE release_date >= 1990 and release_date < 2000;

SELECT name as 'Albums with < 20m sales' from albums
where sales < 20;

SELECT name as 'Rock albums' from albums
where genre like '%Rock%';

