  create database Companydb;
 show databases;
 use companydb;
 
 Create table Employees (EmpID int primary key , EmpName varchar(10), Salary int , JoinDate date);
 desc Employees;
 create table Departments (DeptID int primary key , DeptName varchar(20));
 desc departments;
 alter table employees add column Email VARCHAR(100);
 alter table departments add column dept_location varchar(50);
 alter table employees add column phone int;
 alter table employees modify phone int not null;
 alter table employees modify EmpName varchar(100);
 
alter table departments drop primary key; -- do not provide the primary key attribute when deleting primary key
alter table employees add column DeptID int;
alter table employees
add constraint fk_dept
foreign key (DeptID)
references departments(DeptID);

alter table employees rename column EmpName to EmployeeName;
alter table employees add column age int;

alter table Employees
add constraint chk_salary_age
check ((salary>0) and 
(age>21));

show create table EmployeeDetails;
alter table employees drop column phone;
rename table employees to EmployeeDetails;
desc EmployeeDetails;
alter table EmployeeDetails drop check chk_salary_age;
alter table EmployeeDetails drop column DeptID;
alter table EmployeeDetails drop foreign key fk_dept;

drop table departments;
select * from departments;
 show tables from CompanyDB;
 
 drop database CompanyDB;
 
 
 
 