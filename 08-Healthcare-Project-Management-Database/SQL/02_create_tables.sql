-- Healthcare Project Management Database
-- Step 2: Create tables and relationships

USE healthcare_project_management;

CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(100) NOT NULL,
    industry VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(150) NOT NULL,
    client_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE project_members (
    project_id INT,
    employee_id INT,
    assigned_role VARCHAR(100),
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    task_name VARCHAR(150) NOT NULL,
    assigned_to INT,
    status VARCHAR(50),
    due_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (assigned_to) REFERENCES employees(employee_id)
);

CREATE TABLE milestones (
    milestone_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    milestone_name VARCHAR(150) NOT NULL,
    milestone_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
