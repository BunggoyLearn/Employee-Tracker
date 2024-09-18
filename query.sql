SELECT *
FROM department

SELECT *
FROM role

SELECT *
FROM employee

JOIN employee
ON role.role_id = employee.role_id;

SELECT *
FROM department
JOIN role
ON department.department_id = role.department_id;

SELECT *
FROM role
JOIN employee
ON role.role_id = employee.role_id;