create database person;
use person;
create table persons(
   PersonID int not null auto_increment, -- auto increment means you do not have to insert id while inserting values it will occur automatically
   Lastname varchar(255) NOT NULL,
   Firstname varchar(255),
   Age int,
   primary key(PersonID)
  );
  desc persons;
  
  insert into Persons(LastName,FirstName,Age)
  values('G','Swara',23),
  ('S','Shreepad',24);
  select * from persons;
   

