-- Healthcare Project Management Database
-- Step 4: Analysis queries

USE healthcare_project_management;

-- 1. Projects with their clients
SELECT p.project_id, p.project_name, c.client_name, p.status
FROM projects p
JOIN clients c ON p.client_id = c.client_id;

-- 2. Team members assigned to each project
SELECT p.project_name, COUNT(pm.employee_id) AS employee_count
FROM projects p
LEFT JOIN project_members pm ON p.project_id = pm.project_id
GROUP BY p.project_id, p.project_name;

-- 3. Employees and their project assignments
SELECT e.employee_name, p.project_name, pm.assigned_role
FROM employees e
JOIN project_members pm ON e.employee_id = pm.employee_id
JOIN projects p ON pm.project_id = p.project_id
ORDER BY e.employee_name, p.project_name;

-- 4. Tasks with assigned employee and project
SELECT t.task_name, e.employee_name, p.project_name, t.status, t.due_date
FROM tasks t
JOIN employees e ON t.assigned_to = e.employee_id
JOIN projects p ON t.project_id = p.project_id
ORDER BY t.due_date;

-- 5. Number of tasks per project
SELECT p.project_name, COUNT(t.task_id) AS task_count
FROM projects p
LEFT JOIN tasks t ON p.project_id = t.project_id
GROUP BY p.project_id, p.project_name
ORDER BY task_count DESC;

-- 6. Number of tasks by status
SELECT status, COUNT(*) AS task_count
FROM tasks
GROUP BY status
ORDER BY task_count DESC;

-- 7. Employees working on more than one project
SELECT e.employee_name, COUNT(pm.project_id) AS project_count
FROM employees e
JOIN project_members pm ON e.employee_id = pm.employee_id
GROUP BY e.employee_id, e.employee_name
HAVING COUNT(pm.project_id) > 1
ORDER BY project_count DESC;

-- 8. Project milestones
SELECT p.project_name, m.milestone_name, m.milestone_date, m.status
FROM projects p
JOIN milestones m ON p.project_id = m.project_id
ORDER BY p.project_name, m.milestone_date;
