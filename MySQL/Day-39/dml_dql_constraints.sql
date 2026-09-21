-- ==========================================
-- DAY 39 - DML, DQL & CONSTRAINTS
-- ==========================================

-- Create Database
CREATE DATABASE college;

-- Use Database
USE college;


-- ==========================================
-- CREATE TABLE WITH CONSTRAINTS
-- ==========================================

CREATE TABLE students (
    sid INT PRIMARY KEY,
    sname VARCHAR(30) NOT NULL,
    sage INT,
    smarks INT,
    email VARCHAR(50) UNIQUE,
    city VARCHAR(30) DEFAULT 'Hyderabad'
);


-- ==========================================
-- DML - INSERT
-- ==========================================

INSERT INTO students
VALUES
(1, 'Rahul', 20, 85, 'rahul@gmail.com', 'Hyderabad'),
(2, 'Priya', 21, 90, 'priya@gmail.com', 'Chennai'),
(3, 'Arun', 19, 78, 'arun@gmail.com', 'Bangalore'),
(4, 'Kiran', 20, 88, 'kiran@gmail.com', 'Mumbai'),
(5, 'Anu', 21, 92, 'anu@gmail.com', 'Delhi');


-- ==========================================
-- DQL - SELECT
-- ==========================================

-- Display all records
SELECT * FROM students;

-- Display specific columns
SELECT sid, sname, smarks
FROM students;

-- Students whose marks are greater than 80
SELECT *
FROM students
WHERE smarks > 80;

-- Students from Hyderabad
SELECT *
FROM students
WHERE city = 'Hyderabad';


-- ==========================================
-- DML - UPDATE
-- ==========================================

-- Update marks
UPDATE students
SET smarks = 95
WHERE sid = 1;

-- Update city
UPDATE students
SET city = 'Pune'
WHERE sid = 2;

-- Check updated data
SELECT * FROM students;


-- ==========================================
-- DML - DELETE
-- ==========================================

-- Delete one record
DELETE FROM students
WHERE sid = 5;

-- Check data after deletion
SELECT * FROM students;


-- ==========================================
-- CONSTRAINTS
-- ==========================================

-- PRIMARY KEY
-- sid is the PRIMARY KEY.
-- It uniquely identifies each student.


-- NOT NULL
-- sname cannot contain NULL values.


-- UNIQUE
-- email must be unique for every student.


-- DEFAULT
-- If city is not provided, Hyderabad will be used.


-- ==========================================
-- TEST DEFAULT CONSTRAINT
-- ==========================================

INSERT INTO students
(sid, sname, sage, smarks, email)
VALUES
(5, 'Siddharth', 21, 91, 'siddharth@gmail.com');

-- Check default city
SELECT * FROM students;


-- ==========================================
-- VIEW TABLE STRUCTURE
-- ==========================================

DESC students;


-- ==========================================
-- FINAL DATA
-- ==========================================

SELECT * FROM students;