# CampusConnect Database System

## Database Engine

- Database Engine: SQLite
- Foreign Key Support: Enabled using `PRAGMA foreign_keys = ON;`

---

# Database Schema

The database consists of four related tables:

1. Students
2. Instructors
3. Courses
4. Enrollments

Each table has a primary key and the relationships are maintained using foreign keys to ensure referential integrity.

---

# Normalization

### Unnormalized Form (UNF)

Initially, all student information, course details and instructor details could have been stored in a single table. This would create repeated values and unnecessary duplication of data.

### First Normal Form (1NF)

The schema follows 1NF because every column stores only one value and there are no repeating groups.

### Second Normal Form (2NF)

The schema satisfies 2NF because every non-key attribute depends entirely on its primary key. No partial dependency exists.

### Third Normal Form (3NF)

The schema satisfies 3NF because non-key attributes depend only on the primary key and not on any other non-key attribute. This removes transitive dependency and minimizes redundancy.

---

# Indexing

Indexes improve query performance by reducing the amount of data scanned during searching and joining operations.

```sql
CREATE INDEX idx_student_department
ON Students(department);

CREATE INDEX idx_course_instructor
ON Courses(instructor_id);
```

### Why these indexes?

- `idx_student_department` improves queries that search students using the department column.

- `idx_course_instructor` improves join operations between the Courses and Instructors tables.

### Column intentionally not indexed

The `status` column in the Students table was not indexed because it contains only a few possible values (Active, Graduated and Inactive). Since it has low cardinality, indexing would provide very little performance improvement while increasing storage and update cost.

---

# Transactions and Isolation

The transaction first inserts a student's enrollment record and then decreases the available seats of the selected course.

If any statement fails, the transaction can be rolled back so that no partial update remains in the database.

This ensures data consistency.

Among the available isolation levels, **Serializable** is the safest choice because it prevents lost updates and maintains correct seat availability when multiple students try to enroll in the same course at the same time.

---

# Running the Project

Execute the SQL files in the following order:

1. schema.sql
2. data.sql
3. queries.sql
4. transaction.sql

The database should execute successfully without foreign key errors when the files are run in this order.
