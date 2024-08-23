CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE student_courses (
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
);

-- Insert data into the students table
INSERT INTO students (student_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve');

-- Insert data into the courses table
INSERT INTO courses (course_id, course_name) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'History'),
(4, 'English'),
(5, 'Art');

-- Insert data into the student_courses table
INSERT INTO student_courses (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);