USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'First query';
DELETE FROM albums WHERE release_date < 1991;

SELECT 'Albums with genre of disco' AS 'Second query';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston' AS 'Third query';
DELETE FROM albums WHERE artist LIKE '%Whitney Houston%';