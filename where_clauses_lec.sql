USE employees;

# Where-clauses lecture notes
SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

# Below will print out all with the first name of Shridhar. Only get herber and baek with emp num less than 20000
SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 20000 AND last_name IN ('Herber', 'Baek') OR first_name = 'Shridhar';

# SELECT last_name FROM employees WHERE last_name LIKE '%E';

# Below either works with the NOT keyword. The first one did not work in the past, but seems to work today
# SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;
# SELECT * FROM salaries WHERE NOT salary BETWEEN 50000 AND 100000;

# To get starting characters use the Like % after the string to check for.
SELECT birth_date FROM employees
WHERE NOT birth_date LIKE '195%';

SELECT birth_date FROM employees
WHERE birth_date NOT LIKE '195%';

SELECT birth_date, hire_date FROM employees
WHERE birth_date NOT LIKE '195%'
AND hire_date NOT LIKE '199%';

# MUST pay attention to how data is set up. without the %, it will return an empty set. must include the % since there is data after -01
SELECT birth_date FROM employees WHERE birth_date LIKE '1963-01%';

SELECT * FROM employees WHERE birth_date LIKE '1963-01%' ORDER BY birth_date;



