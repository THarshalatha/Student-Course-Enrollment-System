\# Student-Course-Enrollment-System



\## Project Description



The Student Course Enrollment System is a mini SQL project developed using MySQL. It demonstrates database creation, table relationships, data insertion, and SQL queries for managing students, courses, enrollments, exams, and results.



\---



\## Database Name



student\_project



\---



\## Tables



1\. students

2\. courses

3\. enrollment

4\. exams

5\. results



\---



\## ER Diagram



The database consists of five related tables.



Relationships:



* Students → Enrollment (One-to-Many)
* Courses → Enrollment (One-to-Many)
* Students → Exams (One-to-Many)
* Courses → Exams (One-to-Many)
* Exams → Results (One-to-One)



\---



\## SQL Concepts Used



* &#x20;CREATE DATABASE
* &#x20;CREATE TABLE
* &#x20;PRIMARY KEY
* &#x20;FOREIGN KEY
* &#x20;INSERT
* &#x20;SELECT
* &#x20;INNER JOIN
* &#x20;LEFT JOIN
* &#x20;GROUP BY
* &#x20;Aggregate Functions
* &#x20;CASE Statement
* &#x20;Subquery



\---



\## Project Queries



The project includes the following SQL queries:



1\. List all students

2\. Show all courses

3\. Students enrolled in Database Systems

4\. Count students enrolled in each course

5\. Display exam marks with student \& course

6\. Highest scoring student

7\. Students not enrolled in any course

8\. Courses with no exams conducted

9\. Average marks per course

10\. Students with Grade A

11\. Exams conducted in February

12\. Convert marks into grades using CASE

13\. Student with most enrollments



\---



\## Project Structure



Student-Course-Enrollment-System/

│

├── student\_project.sql

├── queries.sql

├── README.md

├── ER\_Diagram.png

├── student\_project.mwb

└── screenshots/

&#x20;   ├── tables.png

&#x20;   ├── students\_data.png

&#x20;   ├── courses\_data.png

&#x20;   ├── enrollment\_data.png

&#x20;   ├── exams\_data.png

&#x20;   ├── results\_data.png

&#x20;   └── query1.png ... query13.png



\---



\## Author





\*\*Name:\*\* T Harshalatha



\*\*Qualification:\*\* B.E. Graduate (Computer Science)



\*\*Role:\*\* Data Analyst Intern



