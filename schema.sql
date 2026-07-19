PRAGMA foreign_keys = ON;

-- ===========================
-- STUDENTS TABLE
-- ===========================

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT UNIQUE,
    department TEXT NOT NULL,
    semester INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 8),
    admission_year INTEGER NOT NULL,
    status TEXT NOT NULL DEFAULT 'Active'
        CHECK (status IN ('Active','Graduated','Inactive'))
);

-- ===========================
-- INSTRUCTORS TABLE
-- ===========================

CREATE TABLE Instructors (
    instructor_id INTEGER PRIMARY KEY,
    instructor_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    department TEXT NOT NULL,
    designation TEXT NOT NULL
);

-- ===========================
-- COURSES TABLE
-- ===========================

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    course_code TEXT NOT NULL UNIQUE,
    credits INTEGER NOT NULL CHECK (credits BETWEEN 1 AND 6),
    total_seats INTEGER NOT NULL CHECK (total_seats > 0),
    available_seats INTEGER NOT NULL CHECK (available_seats >= 0),
    instructor_id INTEGER NOT NULL,

    FOREIGN KEY (instructor_id)
        REFERENCES Instructors(instructor_id)
);

-- ===========================
-- ENROLLMENTS TABLE
-- ===========================

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    enrollment_date DATE NOT NULL,
    grade TEXT DEFAULT NULL,

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id),

    UNIQUE(student_id, course_id)
);
