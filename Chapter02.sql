-------- 1.CREATE A TABLE
--------------------------------------------------------
CREATE TABLE student(
    ID VARCHAR(6),
    firstname VARCHAR(15),
    lastname VARCHAR(15),
    city VARCHAR(20));
--------------------------------------------------------

-------- 2.SHOW A TABLE WITH DATA TYPE
--------------------------------------------------------
DESC student;
DESCRIBE student;
--------------------------------------------------------

-------- 3.INSERT DATA RECORDS
--------------------------------------------------------
INSERT INTO student (ID, firstname, lastname, city) VALUES
('001', 'KAVEESHA','KALHARI','BENTOTA');
--------------------------------------------------------

-------- 4.INSERT MULTIPLE DATA RECORDS
--------------------------------------------------------
INSERT INTO student (ID, firstname, lastname, city, DOB) VALUES 
('001', 'KAVEESHA','KALHARI','BENTOTA','2002'),
('002', 'AMAYA','FERNANDO','WENNAPPUWA','2003');
--------------------------------------------------------

-------- 5.VIEW DATA RECORDS
--------------------------------------------------------
SELECT * FROM student;
--------------------------------------------------------

-------- 6.DELETE A DATA RECORD
--------------------------------------------------------
DELETE FROM student WHERE ID='002';
--------------------------------------------------------

-------- 7.UPDATE A DATA RECORD
--------------------------------------------------------
UPDATE student SET city='COLOMBO' WHERE ID='003';
--------------------------------------------------------

-------- 8.VIEW ALL TABLES
--------------------------------------------------------
SHOW TABLES;
--------------------------------------------------------

-------- 9.DELETE A TABLE
--------------------------------------------------------
DROP TABLE student;
--------------------------------------------------------

-------- 10.USE PRIMARY KEY AND AUTO INCREMENT
--------------------------------------------------------
CREATE TABLE student(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(30), CITY VARCHAR(20),DOB DATE);
--------------------------------------------------------

-------- 11.RENAME TABLE NAME
--------------------------------------------------------
ALTER TABLE old_table_name RENAME new_table_name;
RENAME TABLE old_table_name TO new_table_name;
--------------------------------------------------------

-------- 12.RENAME MULTIPLE TABLES IN ONE CMD.
--------------------------------------------------------
RENAME TABLE products TO products_old, products_new TO products;
--------------------------------------------------------


