PRAGMA foreign_keys = ON;

-- ==========================================================
-- Transaction Example
-- Student Enrollment Process
-- ==========================================================

BEGIN TRANSACTION;

INSERT INTO Enrollments (
    enrollment_id,
    student_id,
    course_id,
    enrollment_date,
    grade
)
VALUES (
    11,
    1,
    202,
    '2026-01-25',
    NULL
);

UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 202
AND available_seats > 0;

COMMIT;

-- ==========================================================
-- Rollback Example
-- Uncomment the following if you want to test rollback.
-- ==========================================================

/*
BEGIN TRANSACTION;

INSERT INTO Enrollments
VALUES
(12,2,203,'2026-01-26',NULL);

UPDATE Courses
SET available_seats = available_seats - 1
WHERE course_id = 203;

ROLLBACK;
*/
