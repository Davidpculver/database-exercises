# different name to column of results
USE employees;

# Have to wrap in quotes if you want spaces. otherwise, can use as one string using _'s
SELECT MIN(DATEDIFF(hire_date, birth_date)/365) AS 'Youngest hired age' FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee', DATEDIFF(hire_date, birth_date)/365 AS 'Age at hire' FROM employees
    ORDER BY DATEDIFF(hire_date, birth_date)/365 DESC
    LIMIT 50;




