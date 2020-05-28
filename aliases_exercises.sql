use employees;

SELECT CONCAT_WS(' ', first_name, last_name) AS 'full_name', birth_date AS 'DOB'
FROM employees;