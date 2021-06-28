use employees;

# outer ran second - get the results from employees where matches the inner query
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN
# Inner query runs first, get the emp no from dept_manager table
      (SELECT emp_no FROM dept_manager)
LIMIT 10;



SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN
# the where statement gets back the current managers
      (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%')
LIMIT 10;

SELECT dept_name FROM departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Karsten' AND last_name = 'sigstam'));






