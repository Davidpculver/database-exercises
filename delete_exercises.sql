USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Post 91';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with disco genre' AS 'Get groovy';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Eagles not the beagles' AS 'Eagles albums';
DELETE FROM albums WHERE artist = 'Eagles';