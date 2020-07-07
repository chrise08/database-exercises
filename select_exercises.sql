USE codeup_test_db;

SELECT 'These are the name of all albums by Pink Floyd' AS 'First Select Query';

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'This is the year Sgt. Pepper''s Lonely Hearts Club Band was released'  AS 'Second Select Query';

SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'This is the genre for Nevermind' AS 'Third Select Query';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'These are the albums released in the 1990s' AS 'Fourth Select Query';

SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'These are albums with less than 20 million certified sales' AS 'Fifth Select Query';

SELECT name FROM albums WHERE sales < 20;

SELECT 'These are albums with a genre of Rock' AS 'Sixth Select Query';

SELECT name FROM albums WHERE genre LIKE '%Rock%';