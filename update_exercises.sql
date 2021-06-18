USE codeup_test_db;

SELECT * FROM albums;

# print sales before the increase
SELECT 'Sales before increase' AS 'Sales before increase';
SELECT sales FROM albums;

# multiplying all sales by 10 and printing out new value
SELECT 'Sales times 10' AS 'Updated sales';
UPDATE albums SET sales = (sales * 10);
SELECT sales FROM albums;

# print albums before 1980
SELECT 'Albums release before 1980' AS 'Pre 80s';
SELECT * FROM albums WHERE release_date < 1980;

# roll back and print albums to 1880s
SELECT 'Albums release before 1980' AS '1880s';
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;


SELECT 'All from Michael Jackson' AS 'MJ';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'Changed MJ to PJ' AS 'Peter Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';



