use shop;

drop table if exists Salesman;
create table Salesman
(
s_id varchar(4) primary key,
FirstName varchar(10),
LastName varchar(20),
City varchar(10),
commission double,
salary real,
grade varchar(10)
);

drop table if exists Customer;
create table Customer
(
c_id varchar(4) primary key,
cust_name varchar(20),
city varchar(10),
grade int
);

drop table if exists Orders;
create table Orders
(
ord_no varchar(5) primary key,
purch_amt double, 
ord_date date,
customer_id varchar(4) DEFAULT 3001,
salesman_id varchar(4),
foreign key (customer_id) references Customer(c_id) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (salesman_id) references Salesman(s_id) ON DELETE SET NULL ON UPDATE CASCADE
);


insert into Salesman values ('5001','Thilak','Perera','Kandy',0.15,70000,'Grade 02');
insert into Salesman values ('5002','Jagath','Goonapala','Colombo',0.13,45000,'Grade 03');
insert into Salesman values ('5005','Sarath','Perera','Kandy',0.11,40000,'Grade 03');
insert into Salesman values ('5006','Sandun','Peris','Jaffna',0.14,120000,'Grade 01');
insert into Salesman values ('5003','Pasan','Moragaha','Galle',0.12,42000,'Grade 03');
insert into Salesman values ('5007','Nadun','Weerasiri','Colombo',0.13,130000,'Grade 01');
insert into Salesman values ('5004','Kamal','Fernando','Galle',0.14,75000,'Grade 02');
insert into Salesman values ('5008','Ashen','Jayasooriya','Matara',0.11,80000,'Grade 02');
insert into Salesman values ('5009','Gayan','Wijesinghe','Moratuwa',0.10,47000,'Grade 03');
insert into Salesman values ('5010','Kasun','Balasuriya','Ampara',0.09,60000,'Grade 02');
insert into Salesman values ('5011','Aruni','Thilakarathne','Colombo',0.15,110000,'Grade 01');

insert into Customer values ('3002','Wijitha Silva','Kandy',100);
insert into Customer values ('3005','Ramani Dias','Galle',200);
insert into Customer values ('3001','Walter Dip','Kandy',100);
insert into Customer values ('3004','John Palitha','Gampola',300);
insert into Customer values ('3007','WCP Senerath','Colombo',200);
insert into Customer values ('3009','Damani Zoysa','Colombo',100);
insert into Customer values ('3008','Radha John','Gampha',300);
insert into Customer values ('3003','Udaya Bandara','Colombo',200);

insert into Orders values ('70001',150.5,'2015-10-05','3005','5002');
insert into Orders values ('70009',270.65,'2015-09-10','3001','5005');
insert into Orders values ('70002',65.26,'2015-10-05','3002','5001');
insert into Orders values ('70004',110.5,'2015-08-17','3009','5003');
insert into Orders values ('70007',948.5,'2015-09-10','3005','5002');
insert into Orders values ('70005',2400.6,'2015-07-27','3007','5001');
insert into Orders values ('70008',5760,'2015-09-10','3002','5001');
insert into Orders values ('70010',1983.43,'2015-10-10','3004','5006');
insert into Orders values ('70003', 2480.4,'2015-10-10','3009', '5003');
insert into Orders values('70012',250.45,'2015-06-27','3008','5002');
insert into Orders values('70011',75.29,'2015-08-17','3003','5007');
insert into Orders values('70013',3045.6,'2015-04-25','3002','5001');
insert into Orders values('70014',5000,'2015-04-25','3001','5001');

SELECT * FROM Salesman;
SELECT * FROM Customer;
SELECT * FROM Orders;

-- Q01 Write an SQL statement to find the average purchase amount of an order. 
SELECT AVG(purch_amt) 'Average of purchase amount' 
FROM Orders;

-- Q02  Write an SQL statement to find the number of salesmen currently listing for all of their customers.
SELECT COUNT(DISTINCT salesman_id) 'Number of Salesmans' 
FROM Orders;

-- Q03  Write an SQL statement find the number of customers who gets at least a gradation of 200 for his/her performance.
SELECT COUNT(c_id) 'Number of customers' 
FROM Customer 
WHERE grade>=200;

SELECT COUNT(*) 
FROM customer 
WHERE grade>=200;

-- Q04 Write an SQL statement to get the maximum purchase amount of all the orders.
SELECT Ord_no, MAX(purch_amt) 'Maximum Purchase Amount' 
FROM Orders;

SELECT max(purch_amt) AS Max_Purchase_Amount
FROM orders;

-- Q05 Write an SQL statement that find out each order number followed by the name  of the customers who made the order.
SELECT o.ord_no, c.cust_name 
FROM Orders o INNER JOIN Customer c ON o.customer_id=c.c_id;

-- Q06 Write an SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.
SELECT customer_id, MAX(purch_amt) 
FROM Orders 
WHERE customer_id BETWEEN 3002 AND 3007;

-- Q07 Write an SQL statement that counts all orders for a date August 17th, 2015. 
SELECT COUNT(*) 'All orders for a date August 17th,2015' 
FROM Orders WHERE ord_date='2015-08-17';

-- Q08 Write a query that counts the number of salesmen with their order date and ID registering orders for each day. 
SELECT salesman_id, ord_date, COUNT(*) 
FROM Orders 
GROUP BY ord_date, salesman_id;

-- Q09  Write a query to find those customers with their name and those salesmen  with their name and city who lives in the same city. 
SELECT c.cust_name, s.FirstName, s.LastName, s.city 
FROM Customer c JOIN Orders o ON c.c_id=o.customer_id JOIN Salesman s ON s.s_id=o.salesman_id 
WHERE s.city=c.city;

SELECT c.cust_name, s.FirstName, s.LastName, s.city
FROM salesman s join orders o ON s.s_id=o.salesman_id join Customer c ON c.c_id=o.customer_id
WHERE s.city=c.city;

SELECT c.cust_name, s.FirstName, s.LastName, s.city
FROM Customer c, Orders o, Salesman s 
WHERE c.c_id=o.customer_id AND s.s_id=o.salesman_id AND s.city=c.city;

-- Q10 Write an SQL statement to display all those orders by the customers not located in the same cities where their salesmen lives.
SELECT o.ord_no, c.cust_name, s.FirstName, s.LastName, c.city 'Customer_city', s.city 'Salesman_city' 
FROM Orders o, Salesman s, Customer c
WHERE s.s_id=o.salesman_id AND c.c_id=o.customer_id AND s.city<>c.city;

SELECT o.ord_no, c.cust_name, s.FirstName, s.LastName, c.city 'Customer_city', s.city 'Salesman_city' 
FROM Orders o JOIN Salesman s ON o.salesman_id=s.s_id JOIN Customer c ON o.customer_id=c.c_id 
WHERE s.city<>c.city;

-- Q11  Write a query that produces all customers with their name, city, salesman and commission, who served by a salesman and the salesman works at a rate of commission within 12% to 14%. 
SELECT c.cust_name, c.city, s.FirstName 'Salesman_Name', s.commission
FROM Customer c, Salesman s, Orders o 
WHERE c.c_id=o.customer_id AND s.s_id=o.salesman_id AND s.commission BETWEEN 0.12 AND 0.14;

SELECT c.cust_name, c.city, s.FirstName 'Salesman_Name', s.commission
FROM Customer c JOIN Orders o ON c.c_id=o.customer_id JOIN Salesman s ON s.s_id=o.salesman_id 
WHERE s.commission BETWEEN 0.12 AND 0.14;

-- Q12  Write an SQL statement that produces all orders with order number, customer name, commission rate and earned commission amount for those customers who carry their grade more than 200.
SELECT o.ord_no, c.cust_name, s.commission, o.purch_amt*s.commission 'Earned Commission Amount'
FROM Orders o, Customer c, Salesman s WHERE s.s_id=o.salesman_id AND c.c_id=o.customer_id AND c.grade>200;

-- Q13  Write an SQL statement to find the highest purchase amount ordered by each customer. With the highest purchased amount, retrieve their ID, and order date.
SELECT customer_id, ord_date, purch_amt 
FROM Orders 
WHERE (customer_id, purch_amt) 
IN (
	SELECT customer_id, MAX(purch_amt)
    FROM Orders
    GROUP BY Customer_id
);

-- Q14 Write an SQL statement to find the highest purchase amount by order date, for only those customers who have highest purchase amount in a day is more than 2000. With the highest purchased amount, retrieve their ID, and order date.
SELECT customer_id, ord_date, purch_amt
FROM Orders
WHERE (ord_date, purch_amt)
IN(
 SELECT ord_date, MAX(purch_amt)
 FROM Orders
 GROUP BY ord_date
 HAVING MAX(purch_amt)>2000
);

-- Q15 Find the order details of salesmen who are paid less than the average salary of their same grade.
SELECT o.*
FROM Orders o, Salesman s1
WHERE o.salesman_id=s1.s_id AND salary<
(
	SELECT AVG(salary)
    FROM Salesman s2
    WHERE s2.grade=s1.grade
);


