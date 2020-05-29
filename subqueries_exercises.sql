use employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT *
FROM employees e
JOIN titles t
    on e.emp_no = t.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
JOIN dept_manager dm
    on employees.emp_no = dm.emp_no
WHERE gender IN (
    SELECT gender
    FROM dept_manager
    WHERE gender = 'F'
    AND dm.to_date > curdate()
    )