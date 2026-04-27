-- Create Department Table
CREATE TABLE Department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Students Table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(id)
);

-- Insert Data into Department
INSERT INTO Department VALUES (1, 'CSE');
INSERT INTO Department VALUES (2, 'ECE');
INSERT INTO Department VALUES (3, 'MECH');

-- Insert Data into Students
INSERT INTO Students VALUES (1, 'Saif', 20, 1);
INSERT INTO Students VALUES (2, 'Ali', 22, 2);
INSERT INTO Students VALUES (3, 'Rahul', 19, 1);
INSERT INTO Students VALUES (4, 'Arjun', 21, 3);
INSERT INTO Students VALUES (5, 'Zaid', 23, 2);

-- Basic SELECT
SELECT * FROM Students;

-- WHERE condition
SELECT * FROM Students WHERE age > 20;

-- ORDER BY
SELECT * FROM Students ORDER BY age DESC;

-- Aggregate function
SELECT COUNT(*) AS total_students FROM Students;

-- GROUP BY
SELECT dept_id, COUNT(*) AS count_students
FROM Students
GROUP BY dept_id;

-- JOIN
SELECT s.name, d.dept_name
FROM Students s
INNER JOIN Department d
ON s.dept_id = d.id;

-- UPDATE
UPDATE Students SET age = 24 WHERE id = 5;

-- DELETE
DELETE FROM Students WHERE id = 4;