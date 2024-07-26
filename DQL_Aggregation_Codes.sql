use abc_company;

create table Employee
(
Eid varchar(5) primary key,
Ename varchar(20),
Salary real,
Designation varchar(15)
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    Eid varchar(5) primary key,
    Ename varchar(20),
    Salary real,
    Designation varchar(15)
);

show tables;

insert into Employee values('E001','Saman',70000,'Executive');
insert into Employee values('E002','Kamal',65000,'Cleark');
insert into Employee values('E003','Aruni',90000,'Executive');
insert into Employee values('E004','Jagath',150000,'Manager');
insert into Employee values('E005','Nimal',48000,'Cleark');
insert into Employee values('E006','Sandun',95000,'Manager');
insert into Employee values('E007','Bimal',60000,'Cleark');
insert into Employee values('E008','Oshadee',120000,'Manager');
insert into Employee values('E009','Sarath',71000,'Executive');
insert into Employee values('E 010','Kasuni',69000,'Cleark');


-- Queries for Aggregation

SELECT * from Employee;

SELECT AVG(Salary) FROM Employee;

SELECT MIN(Salary) FROM Employee;

SELECT MAX(Salary) FROM Employee;

SELECT SUM(Salary) FROM Employee;
SELECT SUM(Salary) 'Total of Salary' FROM Employee;

SELECT COUNT(*) FROM Employee;
SELECT COUNT(*) 'Number of Employees' FROM Employee;

SELECT designation, AVG(Salary) FROM Employee GROUP BY Designation;

 
SELECT * FROM Employee where salary>40000;

SELECT * FROM Employee GROUP BY Designation HAVING AVG(Salary)>40000;



-- 1.Nested Queries
-- Query(sub-query(sub-query))

-- Find the employees who are paid more than the average salary for all employees.
SELECT * FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);


-- 2.Correlated Nested Queries
-- inside query and outside query working with together or are related.
-- Query data_a(sub-query data_a)

-- Find the employees who are paid more than the average salary of their same designation.
SELECT * FROM Employee e1 WHERE Salary > (SELECT AVG(Salary) FROM Employee e2 where e1.designation = e2.designation);
