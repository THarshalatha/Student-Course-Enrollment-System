-- Create Database
CREATE DATABASE student_project;
USE student_project;

-- Create Students Table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

-- Create Courses Table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

-- Create Enrollment Table
CREATE TABLE enrollment (
    enroll_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    UNIQUE(student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Create Exams Table
CREATE TABLE exams (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Create Results Table
CREATE TABLE results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    exam_id INT UNIQUE,
    marks INT,
    grade CHAR(2),
    FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

-- Insert Students
INSERT INTO students (name, age, gender)
VALUES
('Arjun', 20, 'Male'),
('Nayana', 21, 'Female'),
('Ravi', 22, 'Male'),
('Divya', 20, 'Female');

-- Insert Courses
INSERT INTO courses (course_name, credits)
VALUES
('Database Systems', 4),
('Python Programming', 3),
('Statistics', 4),
('Machine Learning', 5);

-- Insert Enrollments
INSERT INTO enrollment (student_id, course_id, enroll_date)
VALUES
(1, 1, '2024-01-15'),
(1, 2, '2024-01-16'),
(2, 1, '2024-01-15'),
(3, 3, '2024-01-20'),
(4, 4, '2024-01-22');

-- Insert Exams
INSERT INTO exams (student_id, course_id, exam_date)
VALUES
(1, 1, '2024-02-20'),
(1, 2, '2024-02-21'),
(2, 1, '2024-02-20'),
(4, 4, '2024-02-25');

-- Insert Results
INSERT INTO results (exam_id, marks, grade)
VALUES
(1, 85, 'A'),
(2, 78, 'B'),
(3, 92, 'A'),
(4, 65, 'C');