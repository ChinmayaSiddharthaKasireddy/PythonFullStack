-- Create table
CREATE TABLE students (
    sid INT,
    sname VARCHAR(30),
    sage SMALLINT,
    smarks SMALLINT,
    sstate CHAR(30)
);

-- Add columns
ALTER TABLE students
ADD scity VARCHAR(40),
ADD scountry CHAR(40);

-- Rename table
RENAME TABLE students TO stu;

-- View table structure
DESC stu;