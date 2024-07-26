
-- //DQL
-- SELECT
-- FROM
-- WHERE
-- IN
-- GROUP BY
-- HAVING
-- ORDER BY

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


--DQL Basic Queries

--1. All info of all employees
select * from Employee;

--2. Display name and designation of all employees
select Ename, Designation from Employee;

--3. Add Rs. in front of salary and show it as payment
select concat('Rs.', salary) 'payment' from Employee;

--4. order by ascending order for salary
select * from Employee order by salary ASC;

--5. select employees whose salary > 90000
select * from Employee where salary > 90000;

--6. employees whose name has letter 'a' in them
select * from Employee where Ename like '%k%';

--7. get the names of employees whose salary is > 40000 or designation is clerk
select Eid, Ename, Designation from Employee where salary > 40000 OR Designation = 'clerk';

--8. get the number of Manegers in the company
select count(Designation) 'No. of Managers' from Employee where Designation = 'Manager';




--Join Tables
use bank;

DROP TABLE IF EXISTS AccType;
create table AccType
(
typeID varchar(5) primary key,
typeName varchar(20)
);

create table Account
(
accountNo varchar(5) primary key,
balance real,
typeID varchar(5)
);

insert into AccType values
('T001','Ordinary Savings'),
('T002','Max Bonus'),
('T003','Hit Saver');

insert into Account values
('A001',20000,'T001'),
('A002',30000,'T002'),
('A003',40000,'T001'),
('A004',50000,'T004'),
('A005',60000,'T005');

select * from Acctype;
select * from Account;

--inner join
--outer join
--	full outer join
--  left outer join
--  right outer join
--Natural join
--Cross join

--1. Inner join
select * from AccType t inner join Account a ON t.typeID = a.typeID;
 
--2. Outer join
--i.
select * from AccType t right join Account a ON t.typeID = a.typeID;

--ii.
select * from AccType t left join Account a ON t.typeID = a.typeID;

--iii.
select * from AccType t full outer join Account a ON t.typeID = a.typeID;

select * from AccType t right join Account a ON t.typeID = a.typeID;
UNION
select * from AccType t left join Account a ON t.typeID = a.typeID;

--3. Natural join
select * from AccType t natural join account a;
--inner join wage but don't want to define columns.

--4. Cross join
select * from AccType t cross  join account a;
--shows every combination with each rows;





