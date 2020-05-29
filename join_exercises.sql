# use join_test_db;
#
# select *
# FROM users as u
# JOIN roles as r ON u.role_id = r.id;
#
# select *
# FROM users AS u
# LEFT JOIN roles AS r ON u.role_id = r.id;
#
# select *
# FROM users AS u
# RIGHT JOIN roles AS r on u.role_id = r.id;
#
# SELECT COUNT(*) AS user_roles
# FROM users AS u
# RIGHT JOIN roles AS r on u.role_id = r.id
# GROUP BY r.id
# ORDER BY r.id;

USE employees;

SELECT CONCAT(dept_name) AS Department_Name, CONCAT_WS(' ',first_name, last_name) AS Department_Manager
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT CONCAT(dept_name) AS Department_Name, CONCAT_WS(' ',first_name, last_name) AS Department_Manager
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE to_date = '9999-01-01'
    AND e.gender = 'F'
ORDER BY dept_name;

SELECT title AS Title, COUNT(*) AS Count
FROM employees AS e
JOIN dept_emp de
    ON e.emp_no = de.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
JOIN titles t
    ON e.emp_no = t.emp_no
WHERE dept_name = 'Customer Service'
GROUP BY title;

SELECT DISTINCT CONCAT(dept_name) AS Department_Name,
    CONCAT_WS(' ',first_name, last_name) AS Department_Manager,
    CONCAT(s.emp_no) AS Salary
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01';