-- DML
 insert into customer values ('C001','Saman','Moratuwa',50); 
 insert into customer values ('C002','Kamal','Kalutara',100);
   
 insert into customer values ('C001','Saman','Moratuwa',50), ('C002','Kamal','Kalutara',100), ('C003','Nimal','Colombo',120), ('C004','Ruwan', null, 30), ('C005','Amal','Moratuwa',80);

 insert into customer (c_id, city, cust_name, grade) values ('C001','Moratuwa','Saman',50), ('C002','Kalutara','Kamal',100);


 insert into salesman values ('S001','Anura','Perera','Galle', 0.20), ('S002','Amaya','Fernando', 'Kalutara', 0.16), ('S003','Jagath','Pereis','Colombo',0.12), ('S004','Ruwan', null,'Jaffna', 0.13), ('S005','Kaveesha','Kalhari', null, 0.23);


 insert into orders values ('T001', 3000, '2024-07-24', 'C001', 'S001'), ('T002', 4000, '2024-07-19', 'C001', 'S002'), ('T003', 5000, '2024-07-10', 'C002', 'S003'), ('T005', 1000, '2024-07-26', 'C003', 'S001'), ('T006', 6000, '2024-07-20', 'C003', 'S001');


select * from customer;
select * from salesman;
select * from orders;

select cust_name from customer;

select * from customer where c_id='C001';
select c_id, cust_name from customer where c_id='C001';



--UPDATE
SET SQL_SAFE_UPDATES = 0;
update customer set city = 'Kandy' where cust_name = 'Saman';

SET SQL_SAFE_UPDATES = 1;
update customer set city = 'Gampaha' where c_id = 'C004';

update customer set grade=grade+20 where c_id='C002';
update customer set grade=grade-20 where c_id='C002';

update customer set cust_name='Nimal' where c_id='C003';

--update multiple columns
update customer set cust_name='Ashen', city='Matara' where c_id='C005';

--update multiple records
SET SQL_SAFE_UPDATES = 0;
update customer set city='Kalutara' where grade > 50;

update customer set c_id='C006' where c-id='C005';



--DELETE
delete from orders where customer_id='C001';

delete from orders where purch_amt = 4000;

