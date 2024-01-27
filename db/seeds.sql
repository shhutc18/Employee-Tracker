USE employee_tracker_db;

INSERT INTO department (name) VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role (title, salary, department_id) VALUES
    ('Sales Lead', 100000.00, 1),
    ('Salesperson', 80000.00, 1),
    ('Lead Engineer', 150000.00, 2),
    ('Software Engineer', 120000.00, 2),
    ('Accountant', 125000.00, 3),
    ('Legal Team Lead', 250000.00, 4),
    ('Lawyer', 190000.00, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('John', 'Doe', 1, NULL),  -- John Doe has no manager
    ('Mike', 'Chan', 2, NULL),  -- Mike Chan's manager will be John Doe, but John Doe must be inserted first
    ('Ashley', 'Rodriguez', 3, NULL),  -- Ashley Rodriguez has no manager
    ('Kevin', 'Tupik', 4, NULL),  -- Kevin Tupik's manager will be Ashley Rodriguez, but Ashley must be inserted first
    ('Malia', 'Brown', 5, NULL),  -- Malia Brown has no manager
    ('Sarah', 'Lourd', 6, NULL),  -- Sarah Lourd's manager will be Malia Brown, but Malia must be inserted first
    ('Tom', 'Allen', 7, NULL);  -- Tom Allen has no manager

UPDATE employee SET manager_id = 1 WHERE first_name = 'Mike' AND last_name = 'Chan';
UPDATE employee SET manager_id = 3 WHERE first_name = 'Kevin' AND last_name = 'Tupik';
UPDATE employee SET manager_id = 5 WHERE first_name = 'Sarah' AND last_name = 'Lourd';