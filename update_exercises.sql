USE codeup_test_db;

SELECT 'All albums' AS 'First query';
SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT 'All albums 10 times more popular' AS 'First query again';
SELECT * FROM albums;

SELECT 'Albums released before 1980' AS 'Second query';
SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT 'Albums released before 1980 in the 1800s' AS 'Second query again';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'Albums by Michael Jackson' AS 'Third query';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'Albums by Michael Jackson as Peter Jackson' AS 'Third query again';
SELECT * FROM albums WHERE artist = 'Peter Jackson';