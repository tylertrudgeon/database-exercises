USE titles;
USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;