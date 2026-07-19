PRAGMA foreign_keys = ON;

-- ==========================================
-- SAMPLE DATA FOR STUDENTS
-- ==========================================

INSERT INTO Students VALUES
(1,'Rahul','Sharma','rahul.sharma@email.com','9876500001','Computer Science',3,2023,'Active');

INSERT INTO Students VALUES
(2,'Priya','Singh','priya.singh@email.com','9876500002','Information Technology',5,2022,'Active');

INSERT INTO Students VALUES
(3,'Aman','Verma','aman.verma@email.com','9876500003','Computer Science',2,2024,'Active');

INSERT INTO Students VALUES
(4,'Sneha','Gupta','sneha.gupta@email.com','9876500004','Electronics',6,2021,'Active');

INSERT INTO Students VALUES
(5,'Rohit','Kumar','rohit.kumar@email.com','9876500005','Mechanical',7,2020,'Active');

INSERT INTO Students VALUES
(6,'Neha','Yadav','neha.yadav@email.com','9876500006','Civil',4,2022,'Active');

INSERT INTO Students VALUES
(7,'Arjun','Mishra','arjun.mishra@email.com','9876500007','Information Technology',8,2019,'Graduated');

INSERT INTO Students VALUES
(8,'Kiran','Patel','kiran.patel@email.com','9876500008','Computer Science',1,2025,'Active');

INSERT INTO Students VALUES
(9,'Pooja','Joshi','pooja.joshi@email.com','9876500009','Electronics',5,2022,'Active');

INSERT INTO Students VALUES
(10,'Vikas','Pandey','vikas.pandey@email.com','9876500010','Mechanical',3,2023,'Inactive');

-- ==========================================
-- SAMPLE DATA FOR INSTRUCTORS
-- ==========================================

INSERT INTO Instructors VALUES
(101,'Dr. Anil Sharma','anil@college.edu','Computer Science','Professor');

INSERT INTO Instructors VALUES
(102,'Dr. Meera Singh','meera@college.edu','Information Technology','Associate Professor');

INSERT INTO Instructors VALUES
(103,'Dr. Ravi Gupta','ravi@college.edu','Electronics','Assistant Professor');

INSERT INTO Instructors VALUES
(104,'Dr. Sunita Verma','sunita@college.edu','Mechanical','Professor');

INSERT INTO Instructors VALUES
(105,'Dr. Amit Kumar','amit@college.edu','Civil','Associate Professor');

INSERT INTO Instructors VALUES
(106,'Dr. Ritu Jain','ritu@college.edu','Computer Science','Assistant Professor');

INSERT INTO Instructors VALUES
(107,'Dr. Sandeep Mishra','sandeep@college.edu','Information Technology','Professor');

INSERT INTO Instructors VALUES
(108,'Dr. Kavita Rao','kavita@college.edu','Electronics','Assistant Professor');

INSERT INTO Instructors VALUES
(109,'Dr. Mohan Das','mohan@college.edu','Mechanical','Associate Professor');

INSERT INTO Instructors VALUES
(110,'Dr. Pankaj Sinha','pankaj@college.edu','Civil','Professor');

-- ==========================================
-- SAMPLE DATA FOR COURSES
-- ==========================================

INSERT INTO Courses VALUES
(201,'Database Management System','CS301',4,60,20,101);

INSERT INTO Courses VALUES
(202,'Operating Systems','CS302',4,60,18,106);

INSERT INTO Courses VALUES
(203,'Computer Networks','IT301',3,50,12,102);

INSERT INTO Courses VALUES
(204,'Software Engineering','IT302',3,45,10,107);

INSERT INTO Courses VALUES
(205,'Digital Electronics','EC301',4,55,15,103);

INSERT INTO Courses VALUES
(206,'Machine Design','ME301',4,40,8,104);

INSERT INTO Courses VALUES
(207,'Structural Engineering','CE301',4,35,5,105);

INSERT INTO Courses VALUES
(208,'Data Structures','CS201',4,60,22,101);

INSERT INTO Courses VALUES
(209,'Web Technology','IT201',3,50,20,102);

INSERT INTO Courses VALUES
(210,'Artificial Intelligence','CS401',4,45,11,106);

-- ==========================================
-- SAMPLE DATA FOR ENROLLMENTS
-- ==========================================

INSERT INTO Enrollments VALUES
(1,1,201,'2026-01-10','A');

INSERT INTO Enrollments VALUES
(2,2,203,'2026-01-11','B+');

INSERT INTO Enrollments VALUES
(3,3,208,'2026-01-12','A');

INSERT INTO Enrollments VALUES
(4,4,205,'2026-01-13','B');

INSERT INTO Enrollments VALUES
(5,5,206,'2026-01-14','A+');

INSERT INTO Enrollments VALUES
(6,6,207,'2026-01-15','B');

INSERT INTO Enrollments VALUES
(7,7,204,'2026-01-16','A');

INSERT INTO Enrollments VALUES
(8,8,208,'2026-01-17','A+');

INSERT INTO Enrollments VALUES
(9,9,205,'2026-01-18','B+');

INSERT INTO Enrollments VALUES
(10,10,206,'2026-01-19','C');

-- ==========================================
-- FOREIGN KEY VIOLATION EXAMPLE
-- (Run this separately after the above data.
-- It is included only to demonstrate FK enforcement.)
-- ==========================================

-- INSERT INTO Enrollments VALUES
-- (11,999,201,'2026-01-20','A');
