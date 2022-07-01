use codeup_test_db;

select name as 'All albums' from albums;
update albums
SET sales = sales * 10;
select name, sales from albums;

select name as 'Albums released before 1980' from albums
where release_date < 1980;
update albums
set release_date = release_date - 100
where release_date < 1980;



SELECT * from albums where artist = 'Michael Jackson';
UPDATE albums set artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

