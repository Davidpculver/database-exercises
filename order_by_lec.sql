USE employees;

# SELECT * FROM employees WHERE birth_date LIKE '1954-01%';

# to return results in bd order ascending
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date desc;

# Same bday organize by last name
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, hire_date;
