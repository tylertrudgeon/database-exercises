use employees;

SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
  AND (
        first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya')
ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
  AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
  AND (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25%'
    ORDER BY birth_date, hire_date DESC;