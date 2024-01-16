-------- 1.CREATE A TABLE
--------------------------------------------------------
CREATE TABLE STUDENT(ID VARCHAR(6),FIRSTNAME VARCHAR(15),LASTNAME VARCHAR(15),CITY VARCHAR(20));
--------------------------------------------------------

-------- 2.SHOW A TABLE
--------------------------------------------------------
DESC STUDENT;
DESCRIBE STUDENT;
--------------------------------------------------------

-------- 3.INSERT DATA RECORDS
--------------------------------------------------------
INSERT INTO STUDENT (ID, FIRSTNAME, LASTNAME, CITY) VALUES ('001', 'KAVEESHA','KALHARI','BENTOTA');
--------------------------------------------------------

-------- 4.INSERT MULTIPLE DATA RECORDS
--------------------------------------------------------
INSERT INTO STUDENT (ID, FIRSTNAME, LASTNAME, CITY, DOB) VALUES ('001', 'KAVEESHA','KALHARI','BENTOTA','2002-06-20'),('002', 'AMAYA','FERNANDO','WENNAPPUWA',2003-08-26);
--------------------------------------------------------

-------- 5.VIEW DATA RECORDS
--------------------------------------------------------
SELECT * FROM STUDENT;
--------------------------------------------------------

-------- 6.DELETE A DATA RECORD
--------------------------------------------------------
DELETE FROM STUDENT WHERE ID='002';
--------------------------------------------------------

-------- 7.UPDATE A DATA RECORD
--------------------------------------------------------
UPDATE STUDENT SET CITY='COLOMBO' WHERE ID='003';
--------------------------------------------------------

-------- 8.VIEW ALL TABLES
--------------------------------------------------------
SHOW TABLES;
--------------------------------------------------------

-------- 9.DELETE A TABLE
--------------------------------------------------------
DROP TABLE STUDENT;
--------------------------------------------------------

-------- 10.USE PRIMARY KEY AND AUTO INCREMENT
--------------------------------------------------------
CREATE TABLE CUSTOMER(ID INT AUTO_INCREMENT PRIMARY KEY);
CREATE TABLE CUSTOMER(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(20), CITY VARCHAR(20));
CREATE TABLE STUDENT(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(30), CITY VARCHAR(20),DOB DATE);
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

(002, 'AMAYA', 'MATARA', '2002-12-12'),(003, 'NIRUSHI','COLOMBO', '2003-04-18'),(004, 'SADEE', 'MATARA', '2002-06-20'),(005, 'THARA', 'GALLE', '2003-03-02'),(006, 'HIRU', 'COLOMBO', '2000-11-01'),(007, 'CHARU', 'COLOMBO', '2001-09-09'),(008, 'KAVEE', 'MATARA', '2001-02-28'),(009, 'THILINI', 'MATARA', '2001-07-16'),(010, 'ISHAN', 'GALLE', '2003-01-18'),(011, 'HASITH', 'GALLE', '2002-01-18'),(012, 'THARUKA', 'MATARA', '2002-12-18'),(013, 'SAVINDU', 'COLOMBO', '2001-06-11'),(014, 'ANU', 'GALLE', '2000-04-08'),(015, 'DENITA', 'MATARA', '2002-08-18');


