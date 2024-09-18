INSERT INTO department (department_id, name)
VALUES (001, 'Front-End');

INSERT INTO role (role_id, title, salary, department_id)
VALUES (777, 'HTML', 40.0, 001);

INSERT INTO employee (employee_id, first_name, last_name, role_id, manager_id)
VALUES (454, 'Bobby', 'Ross', 777, 202);

-- NEXT STEP IS TO JOIN THE THREE TABLES ONTO ONE

-- WE KNOW 3 DIFF IDS AND THEIR CONNECTORS, CONNECT THEM

-- DEPARTMENT (001) ROLE (777) EMPLOYEE (454)