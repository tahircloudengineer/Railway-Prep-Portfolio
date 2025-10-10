-- Create tables
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    major TEXT
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT,
    credits INTEGER
);

CREATE TABLE enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade TEXT,
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

-- Insert sample data
INSERT INTO students (name, age, major) VALUES
('Amit', 21, 'Computer Science'),
('Sara', 22, 'Mathematics'),
('Vikram', 20, 'Physics'),
('Lina', 23, 'Economics');

INSERT INTO courses (course_name, credits) VALUES
('Data Structures', 4),
('Calculus', 3),
('Quantum Mechanics', 4),
('Microeconomics', 3);

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 2, 'A'),
(3, 3, 'B'),
(4, 4, 'A'),
(4, 1, 'C');

-- Practice Queries
-- 1. Show all students and their majors
SELECT * FROM students;

-- 2. Show all courses with 4 credits
SELECT course_name FROM courses WHERE credits = 4;

-- 3. Show each student's name with their courses
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 4. Count how many students are enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
