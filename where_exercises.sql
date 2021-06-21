USE employees;


# PART ONE

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E';
SELECT last_name FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';


# PART TWO

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

# SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E' OR RIGHT(last_name, 1) = 'E';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E' AND RIGHT(last_name, 1) = 'E';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';