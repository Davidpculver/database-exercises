USE employees;

# Group by is similar to DISTINCT.
#  When a columns data must change when another columns data is modified, the first column is functionally dependant on the second. Order by and count work together.

SELECT gender, COUNT(*) FROM employees GROUP BY gender;

SELECT last_name, COUNT(*) FROM employees GROUP BY last_name ORDER BY last_name;
SELECT last_name, COUNT(*) FROM employees GROUP BY last_name ORDER BY COUNT(*);

# The average age of hire for employees of the company.
SELECT AVG(DATEDIFF(hire_date, birth_date)/365) FROM employees;

# Oldest age of hire
SELECT MAX(DATEDIFF(hire_date, birth_date)/365) FROM employees;

# Youngest age of hire
SELECT MIN(DATEDIFF(hire_date, birth_date)/365) FROM employees;

# GROUP BY combines duplicates into one single value for each group. Consolidates rows based on common column

# SELECT title FROM titles; Would return huge list, every title that every employee ever had. Use DISTINCT

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%e' ORDER BY last_name;

SELECT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name ORDER BY last_name;

SELECT COUNT(last_name), last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name ORDER BY last_name;

SELECT gender, COUNT(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;






