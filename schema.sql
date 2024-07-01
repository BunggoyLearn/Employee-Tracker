-- Drops the employee_db if it exists currently --
DROP DATABASE IF EXISTS employee_db;
-- Creates the employee_db database --
CREATE DATABASE employee_db;

-- use employee_db database --
\c employee_db;

-- Creates the table "department" within employee_db --
CREATE TABLE department (
  -- Creates a numeric column called "id" which cannot contain null --
  id SERIAL PRIMARY KEY,
  -- Creates a string column called "name" which holds up to 30 characters and cannot contain null --
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id SERIAL PRIMARY KEY,

    title VARCHAR(30) NOT NULL,

    salary DECIMAL NOT NULL,

    department_name INTEGER NOT NULL,

    FOREIGN KEY (department_name)

    REFERENCES department(name)

    ON DELETE SET NULL
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,

    first_name VARCHAR(30) NOT NULL,

    last_name VARCHAR(30) NOT NULL,

    role_id INTEGER NOT NULL,

    manager_id INTEGER NOT NULL,

    FOREIGN KEY (role_id)

    REFERENCES role(id)

    ON DELETE SET NULL
);