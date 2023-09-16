--The average grade that is given by each professor
USE bottega_sql_schema;

SELECT p.professors_first_name, p.professors_last_name, AVG(g.grades_puntuation) AS "Average Grade"
FROM grades g
JOIN courses c 
ON g.grades_courses_id = c.courses_id
JOIN professors p 
ON c.courses_professors_id = p.profesors_id
GROUP BY p.professors_first_name, p.professors_last_name;



-- The top grades for each student
USE bottega_sql_schema;

SELECT s.students_first_name, s.students_last_name, MAX(g.grades_puntuation) AS "Top Grades"
FROM students s
JOIN  grades g
ON g.grades_students_id = s.students_id
GROUP BY s.students_first_name, s.students_last_name;



-- Sort students by the courses that they are enrolled in
USE bottega_sql_schema;

SELECT s.students_first_name, s.students_last_name, c.courses_name
FROM students s
JOIN grades g 
ON s.students_id = g.grades_students_id
JOIN courses c 
ON g.grades_courses_id = c.courses_id
ORDER BY s.students_first_name, s.students_last_name, c.courses_name;


-- the most challenging course to the easiest course
USE bottega_sql_schema;

SELECT c.courses_name, AVG(g.grades_puntuation) AS "Average Grade"
FROM courses c
JOIN grades g 
ON c.courses_id = g.grades_courses_id
GROUP BY c.courses_name
ORDER BY AVG(g.grades_puntuation) ASC;


-- which student and professor have the most courses in common
USE bottega_sql_schema;

SELECT 
    s.students_first_name, 
    s.students_last_name,
    p.professors_first_name, 
    p.professors_last_name, 
    COUNT(c.courses_id) AS 'Courses in Common'
FROM students s
JOIN grades g 
ON s.students_id = g.grades_students_id
JOIN courses c 
ON g.grades_courses_id = c.courses_id
JOIN professors p 
ON c.courses_professors_id = p.profesors_id
GROUP BY 
    s.students_first_name, 
    s.students_last_name, 
    p.professors_first_name, 
    p.professors_last_name
ORDER BY 
    COUNT(c.courses_id) DESC;