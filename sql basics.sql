-- Create a database
CREATE DATABASE college;

-- Switch to the database
USE college;

-- Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Insert student records
INSERT INTO students VALUES (1, 'Zaib', 20);
INSERT INTO students VALUES (2, 'KK', 22);
INSERT INTO students VALUES (3, 'DSF', 24);
INSERT INTO students VALUES (4, 'SSA', 27);
INSERT INTO students VALUES (5, 'Zain', 29);

-- View all records from the students table
SELECT * FROM students;

-- select all columns from table students
SELECT * FROM students;

-- select name ,age from students
-- SELECT name,age from students
 SELECT age as AGES 
 FROM students;
 
 
 
use college;
CREATE TABLE cstudents(
  id  INT primary key,
   name varchar (500),
   branch varchar (500),
   marks INT NOT NULL
 );
INSERT INTO cstudents (id, name, branch, marks)
VALUES
  (101,  'Zaib',   'CSE', 66),
  (102,  'Noor',   'DS',  72),
  (103,  'Zubair', 'IT',  81),
  (104,  'Paul',   'CSE', 75),
  (105,  'Mustak', 'DS',  69),
  (106,  'Farru',  'IT',  84),
  (107,  'Ali',    'DS',  70),
  (108,  'Amina',  'CSE', 88),
  (109,  'Ravi',   'IT',  73),
  (110, 'Meera',  'CSE', 90);
  
  
  
-- Display students who belong to the 'CSE' branch.
  SELECT name
FROM cstudents
WHERE branch = 'CSE';


-- List students whose ID is greater than 103.
  SELECT name
  FROM cstudents
WHERE id>103;

-- Find students whose names start with 'Z'.
SELECT id, name, branch, marks
FROM cstudents
WHERE name LIKE 'Z%';
-- end with b
SELECT id, name, branch, marks
FROM cstudents
WHERE name LIKE '%b';

-- middle
SELECT id, name, branch, marks
FROM cstudents
WHERE name LIKE '%ai%';

--- f- 2. WHERE Clause and Operators
---------  Retrieve students from either 'CSE' or 'ECE' branches.

SELECT *
FROM cstudents
WHERE branch = 'CSE'
   OR branch = 'ECE';
  
-- Retrieve students who are not in 'CSE' branch

SELECT *
FROM cstudents
WHERE branch != 'CSE';

-- Display students with ID between 2 and 5.


SELECT *
FROM cstudents
WHERE id BETWEEN 103 AND 107;


-- -------------------------------------  3. ORDER BY******************************
--          ----List all students ordered by name (ascending).
SELECT *
FROM cstudents
ORDER By name ;


-- List all students ordered by ID (descending).
SELECT *
FROM cstudents
ORDER By name desc ;



-- -----------------------4. LIMIT and OFFSET************************
--       ___Show only the first 5 records from the students table.

SELECT *
FROM cstudents
limit 5;

-- Skip the first 3 records and show the next 4.

SELECT *  FROM cstudents
limit 4 offset 3;




--  --------------5. GROUP BY + HAVING***************
--       ------ Count the number of students in each branch.


SELECT branch, COUNT(*) 
FROM cstudents
GROUP BY branch;

-- Display branches with more than 2 students.
select  branch ,count(*)
from cstudents
group by  branch
having count(*) > 2;



--  Show student counts per branch, ordered by the count.


SELECT branch, COUNT(*)
FROM students
GROUP BY branch;




-- --6. CONSTRAINTS*******************************


-- 7. JOINS8888888888888888888888888888********************************
--  Perform an  INNER JOIN on students and marks using id.
-- VIEWS&&&&@#R$@%@#%#*********************************************************



-- Create a view student_summary with only name and branch.

CREATE VIEW student_summary AS
SELECT name, age
FROM students;


SELECT * FROM student_summary;



SELECT * FROM student_summary;


-- Drop the student_summary view.\

drop view student_summary;



-- 9. INDEX
-- Create an index on the name column in students.  

CREATE INDEX idx_name ON cstudents(name);
select  * from  cstudents where name="paul";

-- Create a composite index on name and branch.
-- CREATE INDEX idx_name_branch ON cstudents(name, branch);

-- SELECT * FROM students WHERE name = 'Zaib' AND branch = 'CSE';
-- Drop the index from the students table.

-- DROP INDEX idx_name_branch;



