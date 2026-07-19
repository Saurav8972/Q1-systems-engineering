-- ============================================================
-- Query 1
-- Find students belonging to Computer Science or Information Technology.
-- Uses IN operator.
-- ============================================================

SELECT *
FROM Students
WHERE department IN ('Computer Science','Information Technology');


-- ============================================================
-- Query 2
-- Display students studying between semester 2 and semester 6.
-- Uses BETWEEN operator.
-- ============================================================

SELECT student_id,
       first_name,
       last_name,
       semester
FROM Students
WHERE semester BETWEEN 2 AND 6;


-- ============================================================
-- Query 3
-- Show students whose grade is not yet assigned.
-- Uses IS NULL.
-- ============================================================

SELECT *
FROM Enrollments
WHERE grade IS NULL;


-- ============================================================
-- Query 4
-- Count students department-wise.
-- Uses GROUP BY and HAVING.
-- ============================================================

SELECT department,
       COUNT(student_id) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(student_id) >= 1;


-- ============================================================
-- Query 5
-- Display student names with their enrolled course names.
-- Uses INNER JOIN.
-- ============================================================

SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_name
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id;


-- ============================================================
-- Query 6
-- Display all students and their course details.
-- Uses LEFT JOIN.
-- ============================================================

SELECT
    s.first_name,
    c.course_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
LEFT JOIN Courses c
ON e.course_id = c.course_id;
-- ============================================================
-- Query 7
-- SQLite does not support RIGHT JOIN.
-- Equivalent query using LEFT JOIN.
-- ============================================================

SELECT
    c.course_name,
    s.first_name
FROM Courses c
LEFT JOIN Enrollments e
ON c.course_id = e.course_id
LEFT JOIN Students s
ON e.student_id = s.student_id;


-- ============================================================
-- Query 8
-- Scalar Subquery
-- Display courses having more seats than the average.
-- ============================================================

SELECT course_name,
       available_seats
FROM Courses
WHERE available_seats >
(
    SELECT AVG(available_seats)
    FROM Courses
);


-- ============================================================
-- Query 9
-- Correlated Subquery
-- Display students enrolled in courses having more than 15 seats.
-- ============================================================

SELECT first_name,
       last_name
FROM Students s
WHERE EXISTS
(
    SELECT 1
    FROM Enrollments e
    JOIN Courses c
    ON e.course_id = c.course_id
    WHERE e.student_id = s.student_id
    AND c.available_seats > 15
);


-- ============================================================
-- Query 10
-- EXISTS operator
-- Display instructors who are teaching at least one course.
-- ============================================================

SELECT instructor_name
FROM Instructors i
WHERE EXISTS
(
    SELECT 1
    FROM Courses c
    WHERE c.instructor_id = i.instructor_id
);


-- ============================================================
-- Query 11
-- UNION operation
-- Display all names from Students and Instructors.
-- ============================================================

SELECT first_name AS Name
FROM Students

UNION

SELECT instructor_name
FROM Instructors;


-- ============================================================
-- Query 12
-- EXCEPT operation
-- Display students who are not enrolled in any course.
-- ============================================================

SELECT student_id
FROM Students

EXCEPT

SELECT student_id
FROM Enrollments;
-- ============================================================
-- Query 13
-- Window Function
-- Display students with row numbers based on admission year.
-- ============================================================

SELECT
    student_id,
    first_name,
    last_name,
    admission_year,
    ROW_NUMBER() OVER(ORDER BY admission_year) AS Row_Number
FROM Students;


-- ============================================================
-- Query 14
-- Display courses ordered by available seats.
-- Uses ORDER BY.
-- ============================================================

SELECT
    course_name,
    available_seats
FROM Courses
ORDER BY available_seats DESC;


-- ============================================================
-- Query 15
-- Display students from Information Technology department.
-- Uses WHERE clause.
-- ============================================================

SELECT
    student_id,
    first_name,
    last_name,
    department
FROM Students
WHERE department = 'Information Technology';


-- ============================================================
-- Query 16
-- Display courses along with instructor names.
-- Uses INNER JOIN.
-- ============================================================

SELECT
    c.course_name,
    i.instructor_name,
    i.department
FROM Courses c
INNER JOIN Instructors i
ON c.instructor_id = i.instructor_id;
