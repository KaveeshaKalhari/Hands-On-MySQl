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
INSERT INTO STUDENT (ID, FIRSTNAME, LASTNAME, CITY) VALUES ('001', 'KAVEESHA','KALHARI','BENTOTA'),('002', 'AMAYA','FERNANDO','WENNAPPUWA');
--------------------------------------------------------

-------- 4.VIEW DATA RECORDS
--------------------------------------------------------
SELECT * FROM STUDENT;
--------------------------------------------------------

-------- 5.DELETE A DATA RECORD
--------------------------------------------------------
DELETE FROM STUDENT WHERE ID='002';
--------------------------------------------------------

-------- 6.UPDATE A DATA RECORD
--------------------------------------------------------
UPDATE STUDENT SET CITY='COLOMBO' WHERE ID='003';
--------------------------------------------------------

-------- 7.VIEW ALL TABLES
--------------------------------------------------------
SHOW TABLES;
--------------------------------------------------------

-------- 8.DELETE A TABLE
--------------------------------------------------------
DROP TABLE STUDENT;
--------------------------------------------------------

-------- 9.USE PRIMARY KEY AND AUTO INCREMENT
--------------------------------------------------------
CREATE TABLE CUSTOMER(ID INT AUTO_INCREMENT PRIMARY KEY);
CREATE TABLE CUSTOMER(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(20), CITY VARCHAR(20));
--------------------------------------------------------

-------- 10.RENAME TABLE NAME
--------------------------------------------------------
ALTER TABLE old_table_name RENAME new_table_name;
RENAME TABLE old_table_name TO new_table_name;
--------------------------------------------------------

-------- 11.RENAME MULTIPLE TABLES IN ONE CMD.
--------------------------------------------------------
RENAME TABLE products TO products_old, products_new TO products;
--------------------------------------------------------