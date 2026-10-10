create database college; -- DML COMMANDS 
use college;
create table Employees(EmpId int,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10));
insert into Employees values(1,'Swarali','Gadhave',20,'East'); -- for inserting single row
insert into Employees values(2,'Sayee','Dabekar',21,'South');
insert into Employees(EmpId,FirstName,LastName,EmpAge,Empzone) -- for inserting multiple rows
values(3,'Prachi','Nanaware',22,NULL),
(4,'Khushi','Batwal',23,'North');

update Employees set Empzone = 'West' where EmpId = 3; -- update is a part of DML commands,used to change single values
update Employees set Empzone = 'West' , EmpAge = 28 where EmpId = 4; -- for changing multiple values

select * from Employees;

delete from Employees where EmpId = 1;

-- NOT NULL CONSTRAINT 
create database companydb;
use companydb;
create table Employees(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10));
insert into Employees values(NULL,'Swarali','Gadhave',20,'East');
insert into Employees values(2,NULL,'Dabekar',21,'South');

-- UNIQUE KEY CONSTRAINT
create table Employee1(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10),unique(EmpId));
insert into Employee1 values(1,'Swarali','Gadhave',20,'East');
insert into Employee1 values(1,'sayee','Dabekar',21,'South'); -- not accepted
insert into Employee1 values(2,NULL,'Sharma',20,'East');

create table Employee2(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , check(EmpAge>20)); -- check is used for any condition
insert into Employee2 values(1,'Swarali','Gadhave',21);
Alter table Employee2 add column salary int;
Alter table Employee2 drop column salary;

Alter table Employee2 add column salary int, add check(salary >= 5000);
insert into Employee2 values(1,'Swarali','Gadhave',21,45000);
show create table Employee2;
alter table Employee2 drop check employee2_chk_2;

-- notnull,primary key and check constarint
create table Employee3(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , check(EmpAge>20),primary key(EmpId));
insert into Employee3 values(1,'Swara','G',21);
insert into Employee3 values(1,'Swarali','Gadhave',21);
insert into Employee3 values(2,'Sakshi','R',25);

-- primary and foreign key
create table Employee4(EmpId int primary key, FirstName varchar(10), LastName varchar(10), EmpAge int, Salary int);
insert into Employee4 values(101,'Swara','G',21,5000);
alter table Employee4 add constraint chk_EmpAge_salary
check(EmpAge>20 AND salary >=5000); -- to apply check on multiple columns

insert into Employee4 values(101,'Swara','G',25,5000);

-- default constraint 
create table Employee5(EmpId int primary key, FirstName varchar(10), LastName varchar(10), EmpDept varchar(10) default 'Operations' );
insert into Employee5(EmpId,FirstName,LastName) -- for inserting multiple rows
values(1,'Swara','Gadhave'),
create database college; -- DML COMMANDS 
use college;
create table Employees(EmpId int,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10));
insert into Employees values(1,'Swarali','Gadhave',20,'East'); -- for inserting single row
insert into Employees values(2,'Sayee','Dabekar',21,'South');
insert into Employees(EmpId,FirstName,LastName,EmpAge,Empzone) -- for inserting multiple rows
values(3,'Prachi','Nanaware',22,NULL),
(4,'Khushi','Batwal',23,'North');

update Employees set Empzone = 'West' where EmpId = 3; -- update is a part of DML commands,used to change single values
update Employees set Empzone = 'West' , EmpAge = 28 where EmpId = 4; -- for changing multiple values

select * from Employees;

delete from Employees where EmpId = 1;

-- NOT NULL CONSTRAINT 
create database companydb;
use companydb;
create table Employees(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10));
insert into Employees values(NULL,'Swarali','Gadhave',20,'East');
insert into Employees values(2,NULL,'Dabekar',21,'South');

-- UNIQUE KEY CONSTRAINT
create table Employee1(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , Empzone varchar(10),unique(EmpId));
insert into Employee1 values(1,'Swarali','Gadhave',20,'East');
insert into Employee1 values(1,'sayee','Dabekar',21,'South'); -- not accepted
insert into Employee1 values(2,NULL,'Sharma',20,'East');

create table Employee2(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , check(EmpAge>20)); -- check is used for any condition
insert into Employee2 values(1,'Swarali','Gadhave',21);
Alter table Employee2 add column salary int;
Alter table Employee2 drop column salary;

Alter table Employee2 add column salary int, add check(salary >= 5000);
insert into Employee2 values(1,'Swarali','Gadhave',21,45000);
show create table Employee2;
alter table Employee2 drop check employee2_chk_2;

-- notnull,primary key and check constarint
create table Employee3(EmpId int NOT NULL,FirstName varchar(10),LastName varchar(10), EmpAge int , check(EmpAge>20),primary key(EmpId));
insert into Employee3 values(1,'Swara','G',21);
insert into Employee3 values(1,'Swarali','Gadhave',21);
insert into Employee3 values(2,'Sakshi','R',25);

-- primary and foreign key
create table Employee4(EmpId int primary key, FirstName varchar(10), LastName varchar(10), EmpAge int, Salary int);
insert into Employee4 values(101,'Swara','G',21,5000);
alter table Employee4 add constraint chk_EmpAge_salary
check(EmpAge>20 AND salary >=5000); -- to apply check on multiple columns

insert into Employee4 values(101,'Swara','G',25,5000);

-- default constraint 
create table Employee5(EmpId int primary key, FirstName varchar(10), LastName varchar(10), EmpDept varchar(10) default 'Operations' );
insert into Employee5(EmpId,FirstName,LastName) -- for inserting multiple rows
values(1,'Swara','Gadhave'),
(2,'Ayush','Deshpande');
desc Employee5;
select * from Employee5;

create index demoIndex on Employee5(FirstName);

show indexes from Employee5;

create index DemoIndex2 on Employee5(FirstName,LastName);
drop index demoIndex on Employee5;











