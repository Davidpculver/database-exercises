USE employees;
# use indexes for query optimization
# To show indexes:
SHOW INDEXES FROM employees;
SHOW INDEXES FROM departments;
# index creates a 'hidden table' that only uses that small piece of data. To break down large tables.
SELECT COUNT(salary) FROM salaries;

# Over 2 mil salaries. When query runs, it has to run across every row until it reaches the correct column. Impacts performance. Index's prevent having to run every coloumn.
SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;
SELECT * FROM salaries WHERE salary BETWEEN 50000 AND 70000 LIMIT 20;

# To change a table;
# Adding an index to the column salary. creates "hidden table" that only contains the salary column data without having to run through each row. Runs much faster and returns in order.
ALTER TABLE salaries ADD INDEX salary_index (salary);
# TO remove index;
DROP INDEX salary_index ON salaries;

USE codeup_test_db;

CREATE TABLE quotes2 (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50),
    PRIMARY KEY (id)
);

ALTER TABLE quotes2 ADD UNIQUE (content);

INSERT INTO quotes2(content, author) VALUES ('This is a new quote', 'Marcel Proust');
# Cannot do the following since added unique content:
INSERT INTO quotes2(content, author) VALUES ('This is a new quote', 'Marcel Proust');

# Index exercise;
USE codeup_test_db;
ALTER TABLE albums ADD UNIQUE artist_and_name (artist, name);

# To drop
ALTER TABLE albums DROP INDEX artist_and_name;







