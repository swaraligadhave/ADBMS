-- JOINS
/* INNER JOIN - RETURNS RECORDS THAT HAVE MATCHING VALUES IN BOTH TABLES, THIS IS DEFAULT JOIN 
LEFT(OUTER) JOIN - RETURNS ALL RECORDS FROM LEFT TABLE , MATCHED RECORDS FROM RIGHT
RIGHT(OUTER) JOIN - ALL RECORDS FROM RIGHT, MATCHED FROM LEFT
FULL (OUTER) JOIN - RETURNS ALL RECORDS WHEN THERE IS A MATCH IN EITHER LEFT OR RIGHT */

-- BASICS OF JOIN QUERIES
create database basicjoin;
use basicjoin; 
create table employee (
		emp_id int primary key,
        ename varchar(50));
insert into employee(emp_id,ename)
values (1,'Swarali'),
	    (2,'Sayee'),
        (3,'Shree'),
        (4,'Ashwini'),
        (5,'Sanika');
select * from employee;
insert into employee(emp_id,ename)
values (6,'Sanjay'),
	    (7,'Akshay');

create table projects (p_id int primary key, pname varchar(50), emp_id int, foreign key(emp_id) references employee(emp_id));
insert into projects(p_id,pname,emp_id) 
values(101,'Project 1',1),
(102,'Project 2',2),
(103,'Project 3',3),
(104,'Project 4',4),
(105,'Project 5',5);
DELETE FROM PROJECTS WHERE p_id = 104;
insert into projects values(104,'Project 4',2);
insert into projects values(106,'Project 5',1);
insert into projects values(107,'Project 6',5);

select * from projects;

-- INNER JOIN - MATCHING RECORDS ONLY
select * from employee
JOIN projects
ON employee.emp_id = projects.emp_id;

-- FETCH EMPLOYEE NAME AND PROJECT NAME THEY BELONG TO
select e.ename, p.pname from employee e
inner join projects p 
ON e.emp_id = p.emp_id;

-- right join - values from right table and matching from left
select e.ename, p.pname from employee e
right join projects p 
ON e.emp_id = p.emp_id;

select e.ename, p.pname from projects p
right join employee e 
ON p.emp_id = e.emp_id;

-- FULL OUTER JOIN USING UNION 
-- DISPLAY ALL MATCHING AND NON-MATCHING DATA FROM BOTH THE TABLES
select * from employee 
LEFT JOIN projects
ON employee.emp_id = projects.emp_id
UNION
select * from employee 
RIGHT JOIN projects
ON employee.emp_id = projects.emp_id;

-- DISPLAY THOSE EMPLOYEES WHO HAVE ANY PROJECT ASSIGNED
select * from employee 
LEFT JOIN projects
ON employee.emp_id = projects.emp_id
WHERE projects.emp_id is NOT NULL;

-- DISPLAY THOSE EMPLOYEES WHO DO NOT HAVE ANY PROJECT ASSIGNED
select * from employee 
LEFT JOIN projects
ON employee.emp_id = projects.emp_id
WHERE projects.emp_id is NULL;

 







        
