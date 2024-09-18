-- Drops the employee_db if it exists currently --
DROP DATABASE IF EXISTS employee_db;
-- Creates the employee_db database --
CREATE DATABASE employee_db;

-- use employee_db database --
\c employee_db;

-- Creates the table "department" within employee_db --
CREATE TABLE department (
  -- Creates a numeric column called "id" which cannot contain null --
  department_id SERIAL PRIMARY KEY,
  -- Creates a string column called "name" which holds up to 30 characters and cannot contain null --
  name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
    role_id SERIAL PRIMARY KEY,

    title VARCHAR(30) NOT NULL,

    salary DECIMAL NOT NULL,

    department_id INTEGER NOT NULL,

    FOREIGN KEY (department_id)

    REFERENCES department(department_id)

    ON DELETE SET NULL
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,

    first_name VARCHAR(30) NOT NULL,

    last_name VARCHAR(30) NOT NULL,

    role_id INTEGER,

    manager_id INTEGER NOT NULL,

    FOREIGN KEY (role_id)

    REFERENCES role(role_id)

    ON DELETE SET NULL
);