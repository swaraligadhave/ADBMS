create database demo;

use demo;
create table student( 
 student_id int,
 name varchar(20),
 age int,
 course varchar(50)
 );
select * from student;
insert into student values(1,'Swarali',20,'MCA');
insert into student values(2,'Shreepad',20,'MCA');
insert into student values(3,'Ayush',22,'MCA');
insert into student values(4,'Om',20,'MCA');
insert into student values(5,'Dipti',20,'MCA');

update student set age = 23 where student_id=4;
delete from student where student_id=4;

create database employeedb;
use employeedb;

create table emp(emp_id int,name varchar(50),sal varchar(50));
insert into emp values(1,'Swarali',1000000);
insert into emp values(2,'Shreepad',1000000);
insert into emp values(3,'ayush',100000);
insert into emp values(4,'om',2000000);
insert into emp values(5,'Swaraj',400000);

create table dept(dept_id int , name varchar(50), floor varchar(20));
insert into dept values(1,'IT','1st floor');
insert into dept values(2,'HR','2nd floor');
insert into dept values(3,'Admin','3rd floor');
insert into dept values(4,'Operations','4th Floor');
insert into dept values(5,'Office','5th floor');

update emp set sal = 40000 where emp_id = 5;
select * from emp;
delete from dept where dept_id = 5;
select * from dept;





