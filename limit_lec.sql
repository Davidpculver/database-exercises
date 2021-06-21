USE employees;
select *
from employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 20;