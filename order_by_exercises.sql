USE employees;


# PART ONE

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no;

SELECT * FROM salaries WHERE salary > 100000 ORDER BY salary DESC;

# SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E';
# SELECT last_name FROM employees WHERE last_name LIKE 'E%';
#
# SELECT * FROM employees WHERE last_name LIKE '%q%';
#
#
# # PART TWO
#
# SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
#
# SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
#
# # SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E' OR RIGHT(last_name, 1) = 'E';
# SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
#
# # SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E' AND RIGHT(last_name, 1) = 'E';
# SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
#
#
# SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';