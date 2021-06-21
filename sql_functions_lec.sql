USE employees;

# Not able to do below using DISTINCT
# Concat function creates one string from multiple string values.
SELECT concat(first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya' ORDER BY last_name;

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

SELECT YEAR(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY YEAR(hire_date);

SELECT DAYNAME(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYNAME(hire_date);

SELECT DATEDIFF('2021-06-21', '2021-03-15');