/* Creating students, courses, instructors, and enrollments tables with 
appropriate datatypes, constraints and primary keys.*/

CREATE TABLE students (students_id integer primary key, 
first_name varchar(50), last_name varchar(50), date_of_birth date, 
enrollment_date date, major varchar);

CREATE TABLE courses (course_id integer primary key, course_name varchar, 
credits integer, department varchar);

CREATE TABLE instructors (instructor_id integer primary key, 
first_name varchar, last_name varchar, hire_date date, department varchar);

CREATE TABLE enrollments (enrollment_id integer primary key, 
student_id integer, course_id integer, semester varchar, year integer,
grade varchar);

/* Inserting records into tables */

INSERT INTO students(students_id, first_name, last_name, date_of_birth, 
enrollment_date, major)
VALUES
--(1, 'Blossom', 'Dike', '2000-05-10', '2021-09-01', 'Computer Science'),
(2, 'Denzel', 'Washington', '1990-08-21', '2019-09-01', 'Mathematics'),
(3, 'Michael', 'Jackson', '2001-03-15', '2022-01-10', 'Physics'),
(4, 'Bill', 'Gates', '2000-11-30', '2021-09-01', 'Biology'),
(5, 'Femi', 'Kuti', '1998-07-12', '2019-09-01', 'Chemistry'),
(6, 'Sarah', 'Banks', '2001-02-25', '2022-01-10', 'Economics'),
(7, 'Jay', 'Adams', '1999-06-17', '2020-09-01', 'Accounting'),
(8, 'Victoria', 'James', '2002-09-09', '2021-09-01', 'Engineering'),
(9, 'Tony', 'Tones', '2003-01-01', '2023-01-10', 'Mathematics'),
(10, 'Obio', 'Jones', '2001-04-18', '2022-01-10', 'Computer Science');

INSERT INTO courses (course_id, course_name, credits, department) VALUES
(1, 'Database Systems', 4, 'Computer Science'),
(2, 'Statistics', 3, 'Mathematics'),
(3, 'Quantum Mechanics', 4, 'Physics'),
(4, 'Organic Chemistry', 3, 'Chemistry'),
(5, 'Microeconomics', 3, 'Economics'),
(6, 'Intermediate Accounting', 2, 'Accounting'),
(7, 'Thermodynamics', 4, 'Engineering'),
(8, 'Genetics', 3, 'Biology');

INSERT INTO instructors (instructor_id, first_name, last_name, hire_date,
department) VALUES
(1, 'Dr. Alan', 'Walker', '2015-06-01', 'Computer Science'),
(2, 'Dr. Isaac', 'Newton', '2010-03-15', 'Physics'),
(3, 'Dr. Marie', 'Curie', '2012-07-20', 'Chemistry'),
(4, 'Dr. Raymond', 'Randy', '2018-01-10', 'Economics'),
(5, 'Dr. Charles', 'Darwin', '2016-09-05', 'Biology');

INSERT INTO enrollments (enrollment_id, student_id, course_id, semester,
year, grade) VALUES
(1, 1, 1, 'First', 2023, 'A'),
(2, 2, 2, 'First', 2023, 'B'),
(3, 3, 3, 'First', 2023, 'A'),
(4, 4, 8, 'First', 2023, 'C'),
(5, 5, 4, 'First', 2023, 'B'),
(6, 6, 5, 'First', 2023, 'A'),
(7, 7, 6, 'First', 2023, 'B'),
(8, 8, 7, 'First', 2023, 'A'),
(9, 9, 2, 'First', 2023, 'B'),
(10, 10, 1, 'First', 2023, 'A'),
(11, 1, 2, 'Second', 2024, 'A'),
(12, 2, 3, 'Second', 2024, 'B'),
(13, 3, 4, 'Second', 2024, 'C'),
(14, 4, 5, 'Second', 2024, 'A'),
(15, 5, 6, 'Second', 2024, 'B'),
(16, 6, 7, 'Second', 2024, 'A'),
(17, 7, 8, 'Second', 2024, 'B'),
(18, 8, 1, 'Second', 2024, 'A'),
(19, 9, 2, 'Second', 2024, 'C'),
(20, 10, 3, 'Second', 2024, 'B');

/* Performing queries */

SELECT * FROM students;

SELECT * FROM courses WHERE credits>3;

SELECT * FROM instructors WHERE department='Computer Science';