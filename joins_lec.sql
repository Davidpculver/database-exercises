USE employees;

# The long way, then returns multiple salaries for the emp_no
# SELECT * FROM employees LIMIT 10;
# SELECT salary FROM salaries WHERE emp_no = 10002;

# Table name folowed by .column. Cant pull salaries.salary from employees, so have to join the table salaries. Declare condition by using the keyword ON - use the emp_no from both tables and find every match, grab last name from employees table and salary from salaries table and display those together.

# REGULAR JOIN only shows results if match in both tables
SELECT employees.last_name, salaries.salary
FROM employees
         JOIN salaries
              ON employees.emp_no = salaries.emp_no
LIMIT 50;

# This compares the avg salary based on gender.
SELECT employees.gender, AVG(salaries.salary)
FROM employees
         JOIN salaries
              ON employees.emp_no = salaries.emp_no
GROUP BY gender;


USE join_test_db;

# LEFT JOIN: show results in left table even if no result in left table
# Without the LEFT keyword- only displays the users with roles - leaves out the users with a null role_id.
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles
                   ON users.role_id = roles.id;



USE codeup_test_db;

CREATE TABLE persons
(
    person_id  INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    album_id   INT         NOT NULL,
    PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id)
VALUES ('Olivia', 29),
       ('Santiago', 27),
       ('Tareq', 15),
       ('Anaya', 28);

# Using a table alias: Prevents having to write out entire table name with dot notation.
# FROM persons p = generates alias for persons table, albums a = generates alias for albums table.
SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;






