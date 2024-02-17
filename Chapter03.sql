CREATE DATABASE school;

USE school;

CREATE TABLE student(
    ID INT(6) AUTO_INCREMENT,
    name VARCHAR(15),
    city VARCHAR(20),
    DOB DATE,
    PRIMARY KEY(ID));

INSERT INTO student( name, city, DOB) VALUES 
('KAVEESHA','Galle','2003-01-28'),
('AMAYA', 'MATARA', '2002-02-14'),
('NIRUSHI','COLOMBO', '2003-03-07'),
('SADEE', 'MATARA', '2002-04-21'),
('THARA', 'GALLE', '2003-05-03'),
('HIRU', 'COLOMBO', '2000-06-29'),
('CHARU', 'COLOMBO', '2001-07-13'),
('KAVEE', 'MATARA', '2001-08-28'),
('THILINI', 'MATARA', '2001-06-20'),
('ISHAN', 'GALLE', '2003-09-11'),
('HASITH', 'GALLE', '2002-10-17'),
('THARUKA', 'MATARA', '2002-11-01'),
('SAVINDU', 'COLOMBO', '2001-12-26'),
('ANU', 'GALLE', '2000-01-07'),
('DENITA', 'MATARA', '2002-08-28');

SELECT * FROM student;

-------- 1.DUPLICATE ENTRIES WITHOUT PRIMARY KEY
--------------------------------------------------------
--Query OK, 2 rows affected (0.12 sec)
--Records: 2  Duplicates: 0  Warnings:0___________BUT QUERY OK.
--------------------------------------------------------


-------- 2.DUPLICATE ENTRIES WITH PRIMARY KEY
--------------------------------------------------------
--ERROR 1062 (23000): Duplicate entry '1' for key 'student.PRIMARY'
--------------------------------------------------------


-------- 3.GET ONLY ID, FIRSTNAME
--------------------------------------------------------
SELECT ID, name
FROM student;
--------------------------------------------------------


-------- 4.GET ORDER BY ASCENDING
--------------------------------------------------------
SELECT * FROM student 
ORDER BY ID ASC;
--------------------------------------------------------

-------- 5.GET ORDER BY DESCENDING
--------------------------------------------------------
SELECT * FROM student 
ORDER BY ID DESC;
--------------------------------------------------------

-------- 6.GET FIRST 5 STUDENTS
--------------------------------------------------------
SELECT * FROM student
LIMIT 5;
--------------------------------------------------------

-------- 7.GET LAST 7 STUDENTS
--------------------------------------------------------
SELECT * FROM student
LIMIT 7 OFFSET 7; --LAST ONE IS NOT VISIBLE
--------------------------------------------------------

-------- 8.GET STUDENTS GROUP BY CITIES
--------------------------------------------------------
SELECT * FROM student
ORDER BY city; 
--------------------------------------------------------

-------- 9.GET STUDENTS CITIES FROM MATARA
--------------------------------------------------------
SELECT * FROM student
WHERE city = 'MATARA';
--------------------------------------------------------

-------- 10.GET STUDENTS WHO BORN AFTER 2002
--------------------------------------------------------
SELECT * FROM student
WHERE DOB > '2002-01-01';