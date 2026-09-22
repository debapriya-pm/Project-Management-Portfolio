-- Healthcare Project Management Database
-- Step 3: Insert sample data

USE healthcare_project_management;

INSERT INTO clients (client_name, industry, country) VALUES
('MedCore Pharmaceuticals', 'Pharmaceuticals', 'USA'),
('HealthFirst Network', 'Healthcare Services', 'Canada'),
('NovaCare Solutions', 'Healthcare Technology', 'India'),
('GlobalBio Research', 'Biotechnology', 'UK'),
('WellLife Health Systems', 'Healthcare Services', 'USA');

INSERT INTO employees (employee_name, role, department) VALUES
('Sarah Johnson', 'Project Manager', 'Project Management'),
('Michael Chen', 'Business Analyst', 'Analytics'),
('Priya Sharma', 'Data Analyst', 'Data & Analytics'),
('Daniel Williams', 'Healthcare Consultant', 'Consulting'),
('Ananya Roy', 'Project Coordinator', 'Project Management'),
('James Miller', 'SQL Developer', 'Technology'),
('Emily Brown', 'Research Analyst', 'Market Research');

INSERT INTO projects (project_name, client_id, start_date, end_date, status) VALUES
('Physician Market Research Program', 1, '2026-01-10', '2026-04-30', 'Completed'),
('Prior Authorization Process Improvement', 2, '2026-02-01', '2026-06-30', 'Completed'),
('Healthcare CRM Implementation', 3, '2026-03-15', '2026-08-31', 'In Progress'),
('Patient Experience Research Study', 4, '2026-04-01', '2026-09-30', 'In Progress'),
('Healthcare Analytics Transformation', 5, '2026-05-01', '2026-12-31', 'In Progress');

INSERT INTO project_members (project_id, employee_id, assigned_role) VALUES
(1, 1, 'Project Manager'), (1, 2, 'Business Analyst'), (1, 7, 'Research Analyst'),
(2, 1, 'Project Manager'), (2, 5, 'Project Coordinator'), (2, 3, 'Data Analyst'),
(3, 1, 'Project Manager'), (3, 6, 'SQL Developer'), (3, 3, 'Data Analyst'),
(4, 4, 'Healthcare Consultant'), (4, 7, 'Research Analyst'), (4, 5, 'Project Coordinator'),
(5, 2, 'Business Analyst'), (5, 3, 'Data Analyst'), (5, 6, 'SQL Developer');

INSERT INTO tasks (project_id, task_name, assigned_to, status, due_date) VALUES
(1, 'Define research objectives', 1, 'Completed', '2026-01-20'),
(1, 'Design physician survey', 7, 'Completed', '2026-02-05'),
(1, 'Analyze survey responses', 2, 'Completed', '2026-03-15'),
(1, 'Prepare executive dashboard', 3, 'Completed', '2026-04-10'),
(2, 'Map current authorization workflow', 5, 'Completed', '2026-02-20'),
(2, 'Identify process bottlenecks', 2, 'Completed', '2026-03-10'),
(2, 'Develop improvement recommendations', 3, 'Completed', '2026-04-15'),
(2, 'Present final recommendations', 1, 'Completed', '2026-06-20'),
(3, 'Gather CRM requirements', 2, 'Completed', '2026-04-01'),
(3, 'Configure Salesforce environment', 6, 'In Progress', '2026-06-15'),
(3, 'Develop reporting structure', 3, 'In Progress', '2026-07-15'),
(3, 'User acceptance testing', 1, 'Not Started', '2026-08-10'),
(4, 'Develop research questionnaire', 7, 'Completed', '2026-05-15'),
(4, 'Conduct patient research', 4, 'In Progress', '2026-07-30'),
(4, 'Analyze research findings', 7, 'Not Started', '2026-09-10'),
(5, 'Assess current analytics capabilities', 2, 'Completed', '2026-06-01'),
(5, 'Develop data model', 3, 'In Progress', '2026-08-15'),
(5, 'Build reporting framework', 6, 'Not Started', '2026-10-15');

INSERT INTO milestones (project_id, milestone_name, milestone_date, status) VALUES
(1, 'Research Design Approved', '2026-01-25', 'Completed'),
(1, 'Data Collection Completed', '2026-03-01', 'Completed'),
(1, 'Final Report Delivered', '2026-04-30', 'Completed'),
(2, 'Current State Assessment Completed', '2026-02-28', 'Completed'),
(2, 'Process Improvement Design Completed', '2026-04-30', 'Completed'),
(2, 'Final Recommendations Delivered', '2026-06-30', 'Completed'),
(3, 'Requirements Approved', '2026-04-15', 'Completed'),
(3, 'CRM Configuration Completed', '2026-07-31', 'In Progress'),
(3, 'Implementation Completed', '2026-08-31', 'Not Started'),
(4, 'Research Design Approved', '2026-05-15', 'Completed'),
(4, 'Research Data Collection Completed', '2026-08-15', 'In Progress'),
(4, 'Final Research Report', '2026-09-30', 'Not Started'),
(5, 'Analytics Assessment Completed', '2026-06-15', 'Completed'),
(5, 'Data Model Completed', '2026-09-15', 'In Progress'),
(5, 'Analytics Framework Delivered', '2026-12-31', 'Not Started');
