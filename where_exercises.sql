use employees;

SELECT first_name
    FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
    FROM employees
    WHERE last_name LIKE 'E%';

SELECT *
    FROM employees
    WHERE hire_date BETWEEN 1990-01-01 AND 1999-12-30;

SELECT *
    FROM employees
    WHERE birth_date BETWEEN 1900-12-25 AND 2020-12-25;

SELECT *
    FROM employees
    WHERE last_name LIKE '%q%';