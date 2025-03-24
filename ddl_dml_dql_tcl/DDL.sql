SHOW DATABASES;
CREATE DATABASE UNIVERSITY;
USE university;
CREATE TABLE student(
	reg_no INT PRIMARY KEY,
    f_name VARCHAR(20) NOT NULL,
    l_name VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    semester INT NOT NULL,
    department VARCHAR(20) NOT NULL,
    course VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL
    );
SHOW tables;c:\Users\NIKHIL\Desktop\SQL\Postgre SQL\DML.sql
DESC student;
RENAME TABLE student TO students;
DESC students;
ALTER TABLE students RENAME COLUMN city to address;
ALTER TABLE students MODIFY COLUMN address VARCHAR(100);
DESC hostel;
