-- Question 1: List all students
SELECT * FROM students;

-- Question 2: Show all courses
SELECT * FROM courses;

-- Question 3: Students enrolled in 'Database Systems'
SELECT s.student_id,
       s.name,
       c.course_name
FROM students s
JOIN enrollment e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Database Systems';

-- Question 4: Count total students enrolled in each course
SELECT c.course_name,
       COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollment e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

-- Question 5: Display exam marks with student & course
SELECT s.name,
       c.course_name,
       r.marks,
       r.grade
FROM results r
JOIN exams ex
ON r.exam_id = ex.exam_id
JOIN students s
ON ex.student_id = s.student_id
JOIN courses c
ON ex.course_id = c.course_id;

-- Question 6: Highest scoring student
SELECT s.name,
       r.marks
FROM results r
JOIN exams ex
ON r.exam_id = ex.exam_id
JOIN students s
ON ex.student_id = s.student_id
WHERE r.marks = (
SELECT MAX(marks)
FROM results
);

-- Question 7: Students not enrolled in any course
SELECT *
FROM students
WHERE student_id NOT IN
(
SELECT student_id
FROM enrollment
);

-- Question 8: Courses with no exams conducted
SELECT c.course_name
FROM courses c
LEFT JOIN exams e
ON c.course_id = e.course_id
WHERE e.exam_id IS NULL;

-- Question 9: Average marks per course
SELECT c.course_name,
       AVG(r.marks) AS average_marks
FROM results r
JOIN exams ex
ON r.exam_id = ex.exam_id
JOIN courses c
ON ex.course_id = c.course_id
GROUP BY c.course_name;

-- Question 10: Students with Grade 'A'
SELECT s.name,
       r.grade
FROM results r
JOIN exams ex
ON r.exam_id = ex.exam_id
JOIN students s
ON ex.student_id = s.student_id
WHERE r.grade = 'A';

-- Question 11: List exams conducted in February
SELECT *
FROM exams
WHERE MONTH(exam_date) = 2;

-- Question 12: Convert marks into auto grade
SELECT marks,
CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    WHEN marks >= 60 THEN 'C'
    ELSE 'D'
END AS Auto_Grade
FROM results;

-- Question 13: Student with most enrollments
SELECT s.name,
       COUNT(e.course_id) AS total_courses
FROM students s
JOIN enrollment e
ON s.student_id = e.student_id
GROUP BY s.student_id, s.name
ORDER BY total_courses DESC
LIMIT 1;