use join_test_db;

select *
FROM users as u
JOIN roles as r ON u.role_id = r.id;

select *
FROM users AS u
LEFT JOIN roles AS r ON u.role_id = r.id;

select *
FROM users AS u
RIGHT JOIN roles AS r on u.role_id = r.id;

SELECT COUNT(*) AS user_roles
FROM users AS u
RIGHT JOIN roles AS r on u.role_id = r.id
GROUP BY r.id
ORDER BY r.id;

