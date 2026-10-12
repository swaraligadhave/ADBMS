-- TCL COMMANDS 

-- start transaction OR BEGIN; TO EXECUTE MULTIPLE STATEMENTS AS A SINGLE TRANSACTION
-- WE MUST EXPLICITLY START THE TRANSACTION
-- COMMIT - SAVE CHANGES MADE DURING TRANSACTION
-- ROLLBACK - UNDOES ALL CHANGES MADE DURING TRANSACTION
-- SAVEPOINT - SETS A SAVEPOINT WITHIN A TRANSACTION TO ROLL BACK TO LATER
-- ROLLBACK TO SAVEPOINT - ROLLS BACK TO SPECIFIC SAVEPOINT WITHOUT AFFECTING EARLIER CHANGES

CREATE database TCL;
USE TCL;
CREATE TABLE orders(
   order_id int primary key,
   customer_name varchar(100),
   status varchar(50)
);
desc orders;
-- start transaction -- 
set autocommit = 0;-- in mysql autocommit mode is enabled by default which means whenever we execute any sql statement is 
-- automatically committed. this command is used to disable auto commit.
-- ** in ddl commands auto commit cannot be disabled .
-- in many dbms it is disable by default
BEGIN; -- OR START TRANSACTION
INSERT INTO orders VALUES (101,'Swara','pending');
INSERT INTO orders VALUES (102,'Shree','pending');
UPDATE orders set customer_name = 'Raj ' where order_id = 102;
truncate table orders; -- delete all the rows from table 
select* from orders;
rollback;
commit;
-- if we dont commit we cant see the point when we rollback ,it will show null
-- each change has to be committed to see the result of rollback if you change anything 
INSERT INTO orders VALUES (103,'Shreepad','pending');
INSERT INTO orders VALUES (104,'Sayee','pending');
INSERT INTO orders VALUES (105,'Khushu','pending');
delete from orders where order_id = 105;

-- SAVEPOINT COMMAND -- 
-- STEP 1: INSERT A FEW ORDERS
INSERT INTO orders VALUES (106,'Mansi','pending');
INSERT INTO orders VALUES (107,'Prachi','pending');
SAVEPOINT sp1;
select * from orders;

-- Step 2: update one order
UPDATE orders set status = 'shipped ' where order_id = 107;
SAVEPOINT sp2;

-- Step 3: delete one order
DELETE from orders where order_id = 106;
SAVEPOINT sp3;


-- undo delete but keep update 
rollback to savepoint sp2; -- if we do sp1 here it will show only the inserted values without update
select * from orders;
rollback;
-- commit the rest 
commit;