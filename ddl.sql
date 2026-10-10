create database Institute;
show databases;
use Institute;
create table Staff(staff_id int , first_name varchar(50),last_name varchar(50),DOB date ,dept_id int);

create table Department(dept_id int , dept_name varchar(50), dept_location varchar(50));
desc staff;
desc Department;
Alter table staff add Location varchar(20); -- to add single column
Alter table staff add Joining_year int;
Alter table staff add age int , add contact_no int(10); -- OR
Alter table staff add (age int , contact_no int(10)); -- for adding multiple columns

Alter table staff modify first_name text; -- to modify the datatype of the column eg from varchar to text
Alter table staff drop column contact_no;
Alter table staff modify last_name varchar(40);
Alter table staff add primary key(staff_id); -- for adding primary key to any column of a table
alter table department add primary key(dept_id);

alter table staff drop primary key; -- for removing primary key from any table column 

Alter table staff add foreign key(dept_id) -- for adding foreign key to any table column
references department(dept_id); 

Alter table staff add constraint FK_staff_department -- alternate method to add foreign key
foreign key(dept_id) references department(dept_id);

alter table staff rename staff1;-- for renaming a table
--   OR 
rename table staff1 to staff; 

alter table staff rename column first_name to First_Name; -- for renaming a column name in a table 

drop database Institute;   





