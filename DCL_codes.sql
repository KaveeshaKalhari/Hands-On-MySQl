--DCL

select user from mysql.user;

create database TestDatabase;
show databases;

create user 'user2'@'localhost' identified by '1234';

create user 'user1'@'localhost' identified by '1234';

grant all privileges on testdatabase.* to 'user2'@'localhost';

grant drop on testdatabase.* to 'user1'@'localhost';

revoke all privileges on testdatabase.* from 'user2'@'localhost';

drop user 'user1'@'localhost';

use testdatabase;

create database company;
use company;

grant all privileges on company.* to 'user2'@'localhost';
revoke all privileges on company.* from 'user1'@'localhost';

create database ABC_Company;
grant all privileges on ABC_Company.* to 'user1'@'localhost';




