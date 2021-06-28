USE employees;

SELECT * FROM employees WHERE hire_date IN (
SELECT hire_date FROM employees WHERE emp_no = '101010');

SELECT DISTINCT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name, gender FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%') AND gender = 'f';


# BONUS

SELECT dept_name FROM departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'f') AND to_date LIKE '9999%');

# Instructor example bonus 1: Both work

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW()
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'));

# Need to figure out how to get the top salary name.
SELECT first_name, last_name FROM employees WHERE emp_no IN(SELECT salary FROM salaries ORDER BY salary DESC) LIMIT 10;

SELECT * FROM salaries  ORDER BY salary DESC LIMIT 10;


# Instructor example bonus 2:
SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary IN (SELECT max(salary) FROM salaries));

# Are they still getting paid that much?
SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE to_date LIKE '9999%' AND salary IN (SELECT max(salary) FROM salaries));

