USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE month(birth_date) = '12' AND day(birth_date) = '25';

SELECT * FROM employees WHERE month(birth_date) = '12' AND day(birth_date) = '25' AND hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '____-12-25';

SELECT * FROM employees WHERE month(birth_date) = '12' AND day(birth_date) = '25' AND hire_date LIKE '199%' ORDER BY birth_date, hire_date desc;

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE month(birth_date) = '12' AND day(birth_date) = '25' AND hire_date LIKE '199%' ORDER BY hire_date desc;


