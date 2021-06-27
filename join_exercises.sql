USE join_test_db;
INSERT INTO users (name, email, role_id)
VALUES ('David', 'david@codeup.com', null),
       ('Jackie', 'jackie@codeup.com', 2),
       ('Winston', 'winston@dog.com', 2),
       ('Bob', 'bob@humpback.com', 2);

# Select all current managers
USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date > now()
limit 10;

# INSTRUCTOR EXAMPLE
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%';




# Select current managers that are female
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date > now()
  AND e.gender = 'f'
limit 10;

# Current titles of employees working in cust service dept
# Instructor example
SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND YEAR(t.to_date) = '9999' AND Year(de.to_date) = '9999'
GROUP BY t.title;




# Attempting to get current salaries for all managers
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS Salary
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
         JOIN salaries s on s.emp_no = e.emp_no
WHERE dm.to_date > now() AND dm.dept_no = d.dept_no;


SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS Salary
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
         JOIN salaries s on s.emp_no = e.emp_no
WHERE dm.to_date > now() AND s.to_date > now() ORDER BY salary desc;

