const inquirer = require('inquirer');
const { features } = require("process");
const { Pool } = require('server.js');

const data = await inquirer.prompt([
    {
        type: "list",
        name: "choices",
        message: "what would you like to do?",
        choices: [
            "View All Employees",
            "Add An Employee",
            "Update Employee Role",
            "View All Roles",
            "Add A Role",
            "View All Departments",
            "Add A Department",
            "Quit",
        ],
    },
    {
        type: "input",
        name: "FirstName",
        message: "What is the employee's first name?",
        when: (answers) => answers.choices == "Add Employee",
    },
    {
        type: "input",
        name: "LastName",
        message: "What is the employee's last name?",
        when: (answers) => answers.choices == "Add Employee",
    },
    {
        type: "list",
        name: "Role",
        message: "What is the employee's role?",
        choices: roleList,
        when: (answers) => answers.choices == "Add Employee",
    },
    {
        type: "list",
        name: "Manager",
        message: "Who is the employee's manager?",
        choices: managerList,
        when: (answers) => answers.choices == "Add Employee",
    },
    {
        type: "list",
        name: "Name",
        message: "Which employee's role would you like to update?",
        choices: employeeList,
        when: (answers) => answers.choices == "Update Employee Role",
    },
    {
        type: "list",
        name: "NewRole",
        message: "Choose the new role for the employee.",
        choices: roleList,
        when: (answers) => answers.choices == "Update Employee Role",
    },
    {
        type: "input",
        name: "RoleName",
        message: "What is the name of the role?",
        when: (answers) => answers.choices == "Add Role",
    },
    {
        type: "input",
        name: "Salary",
        message: "What is the salary of the role?",
        when: (answers) => answers.choices == "Add Role",
    },
    {
        type: "list",
        name: "DepartmentRole",
        message: "Which department does the role belong to?",
        choices: departmentList,
        when: (answers) => answers.choices == "Add Role",
    },
    {
        type: "input",
        name: "Department",
        message: "Enter the name of the department?",
        when: (answers) => answers.choices == "Add Department",
    },
]);


