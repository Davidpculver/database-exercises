USE codeup_test_db;

SELECT 'All from Pink Floyd' AS 'Albums';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
# Below works with name, but will not work with *
# SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Albums';
SELECT release_date FROM albums WHERE name = 'Sgt.Pepper\'s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Nirvana album';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 90s' AS '90s albums';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Less than 20 mil certified sales' AS 'Certified Sales';
SELECT * FROM albums WHERE sales < 20;

SELECT 'Rock albums' AS 'Genre: Rock';
# the word rock is not case sensitive. Enter 'rock' and get the same results.
SELECT * FROM albums WHERE genre = 'Rock';

SELECT * FROM albums WHERE artist IN ('Michael Jackson', 'Elton John', 'Metallica');

