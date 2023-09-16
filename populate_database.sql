-- Create a script that populates all of the database tables with sample data

-- students
USE bottega_sql_schema;

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Frodo', 'Baggins', 'frodo@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Aragorn', 'Elessar', 'aragorn@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Hermione', 'Granger', 'hermione@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Legolas', 'Greenleaf', 'legolas@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Daenerys', 'Targaryen', 'daenerys@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Jon', 'Snow', 'jon@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Arwen', 'Undómiel', 'arwen@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Gandalf', 'the Grey', 'gandalf@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Luna', 'Lovegood', 'luna@test.com');

INSERT INTO students (students_first_name, students_last_name, students_email) 
VALUES ('Tyrion', 'Lannister', 'tyrion@test.com');


-- professors
USE bottega_sql_schema;

INSERT INTO professors (professors_first_name, professors_last_name, professors_email)
VALUES ('Albus', 'Dumbledore', 'albus@test.com');

INSERT INTO professors (professors_first_name, professors_last_name, professors_email)
VALUES ('Minerva', 'McGonagall', 'minerva@test.com');

INSERT INTO professors (professors_first_name, professors_last_name, professors_email)
VALUES ('Severus', 'Snape', 'severus@test.com');

INSERT INTO professors (professors_first_name, professors_last_name, professors_email)
VALUES ('Charles', 'Xavier', 'charles@test.com');


-- courses

USE bottega_sql_schema;

INSERT INTO courses (courses_name, courses_professors_id)
VALUES ('Potions', 1);

INSERT INTO courses (courses_name, courses_professors_id)
VALUES ('Transfiguration', 2);

INSERT INTO courses (courses_name, courses_professors_id)
VALUES ('Defense Against the Dark Arts', 3);

INSERT INTO courses (courses_name, courses_professors_id)
VALUES ('Mutant Powers', 4);


-- grades using Rand()

USE bottega_sql_schema;

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (1, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (2, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (2, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (3, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (3, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (4, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (4, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (4, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (5, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (5, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (5, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (6, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (6, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (7, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation)
VALUES (7, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (7, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (7, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (8, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (8, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (8, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (9, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (9, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (9, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (9, 4, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (10, 1, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (10, 2, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (10, 3, RAND() * 10);

INSERT INTO grades (grades_students_id, grades_courses_id, grades_puntuation) 
VALUES (10, 4, RAND() * 10);