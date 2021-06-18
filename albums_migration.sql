USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
-- only column that has to been NOT NULL is the id since it's the primary key
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    sales DOUBLE NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- how to add to our query. Values have to correspond to our table data column
-- INSERT INTO albums(artist, name, release_date, sales, genre)
-- VALUES('Taylor Swift', 'Fearless', 2008, 10000000, 'Country');