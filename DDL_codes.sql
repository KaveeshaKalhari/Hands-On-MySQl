--DDL
drop database company;

create database company;

use company;

create table customer
(
c_id varchar(4) primary key,
cust_name varchar(10),
city varchar(10),
grade int,
constraint customer_grade check(grade between 0 and 1000)
);

create table salesman
(
s_id varchar(4) primary key,
FirstName varchar(10),
LastName varchar(10),
city varchar(10),
commission real
);

create table orders
(
ord_no varchar(4) primary key,
purch_amt real,
ord_date date,
customer_id varchar(4) default 'C005',
salesman_id varchar(4) default '5001',
foreign key (customer_id) references customer (c_id) on delete restrict on update set null,
foreign key (salesman_id) references salesman (s_id) on delete restrict on update set null,
constraint order_amnt check (purch_amt > 0)
);

show tables;

alter table customer add column customer_age int after cust_name;
alter table orders add constraint c1 foreign key(customer_id) references customer (c_id) on delete restrict on update set null;

alter table orders rename column ord_date to ordered_date;
ALTER TABLE orders CHANGE ord_date ordered_date DATE;

alter table salesman drop column city;

drop table orders;
drop table customer;
drop table salesman;

drop database company; 
 
