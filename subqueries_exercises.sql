use employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT COUNT(*) AS 'Total Titles', COUNT(DISTINCT title) AS 'Unique Titles'
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
    );

SELECT dept_name
FROM employees
JOIN dept_manager dm
    on employees.emp_no = dm.emp_no
JOIN departments d
    on dm.dept_no = d.dept_no
WHERE gender IN (
    SELECT gender
    FROM dept_manager
    WHERE gender = 'F'
    and dm.to_date > curdate()
    )
ORDER BY dept_name;

SELECT first_name, last_name
FROM employees
JOIN salaries s
    on employees.emp_no = s.emp_no
WHERE salary IN (
    SELECT MAX(salary)
    FROM salaries
    WHERE to_date > curdate()
    )