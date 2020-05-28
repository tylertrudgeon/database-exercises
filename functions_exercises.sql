use employees;

SELECT CONCAT_WS(' ', first_name, last_name, 'has worked for', datediff(NOW(), hire_date), 'days.') AS totalDaysWorked
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25%'
ORDER BY birth_date, hire_date DESC;

SELECT concat_ws(' ', first_name, last_name) AS fullName
FROM employees
WHERE first_name LIKE 'E%'
   AND last_name LIKE '%e';

