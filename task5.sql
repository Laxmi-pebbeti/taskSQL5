use university;
CREATE TABLE students1(
    student_id INT PRIMARY KEY,
    name        VARCHAR(50),
    age         INT,
    department  VARCHAR(50),
    marks       INT
);
INSERT INTO students1 VALUES
(1, 'Asha', 20, 'CS', 85),
(2, 'Ravi', 21, 'CS', 90),
(3, 'Neha', 20, 'IT', 78),
(4, 'Aman', 22, 'IT', NULL),
(5, 'Pooja', 21, 'HR', 88),
(6, 'Kiran', 21, 'CS', 72),
(7, 'Meena', 20, 'HR', 95);
-- maximun value--
select max(marks) from students1;
-- minimum value--
select min(marks) from students1;
-- count --
select count(student_id) from students1; 
-- sum --
select sum(marks) from students1;
-- average --
select avg(marks) from students1;

-- group by age --
SELECT age, COUNT(*) AS student_count
FROM students1
GROUP BY age;
-- group by aggregate functions --
SELECT department, AVG(marks)     , MAX(marks)     
FROM students1
GROUP BY department;

-- having clause --
SELECT department, AVG(marks) 
FROM students1
GROUP BY department
HAVING AVG(marks) > 80;

-- where vs having 
SELECT department, COUNT(*)
FROM students1
WHERE age > 20
GROUP BY department;

SELECT department, COUNT(*)
FROM students1
GROUP BY department
HAVING COUNT(*) > 1;





