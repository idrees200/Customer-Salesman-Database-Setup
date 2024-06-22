create database customer_salesman;
create table salesman(
salesman_id int not null,
namee varchar(25),
city varchar(25),
comission float
primary key (salesman_id)

);
select* from salesman
insert into salesman values(5001,'James Hoog','New York',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','San Jose',0.13)
insert into salesman values(5003,'Laus Hen','San Jose',0.12)

create table orders(
ord_no int not null,
purch_amt float,
ord_date date,
customer_id int ,
salesman_id int

primary key (ord_no)
foreign key (salesman_id) references  salesman(salesman_id)

);

alter table orders
add foreign key(customer_id) references customers(customer_id)

create table customers(

customer_id int not null,
cust_name varchar (25),
city varchar (25), 
grade int,
salesman_id int

primary key (customer_id)
foreign key (salesman_id) references  salesman(salesman_id)

);
 select* from orders
 insert into orders values (70001,150.5,'2012-10-05',3005,5002)
 insert into orders values (70009,270.65,'2011-09-10',3001,5005)
 insert into orders values (70002,65.26,'2014-10-05',3002,5001)
 insert into orders values (70004,110.5,'2011-08-17',3009,5003)
 insert into orders values (70007,948.5,'2012-09-10',3005,5002)
 insert into orders values (70005,2400.6,'2010-07-27',3007,5001)
 insert into orders values (70008,5760,'2013-09-10',3002,5001)
 insert into orders values (70010,1983.43,'2010-10-10',3004,5006)
 insert into orders values (70003,2480.4,'2013-10-10',3009,5003)
 insert into orders values (70012,250.45,'2010-06-27',3008,5002)
 insert into orders values (70011,75.29,'2014-08-17',3003,5007)
 insert into orders values (70013,3045.6,'2010-04-25',3002,5001)
 
  select* from customers
  insert into customers values (3002,'NicK Rimando','New York',100,5001)
  insert into customers values (3007,'John Brad Devis','New York',100,5001)
  insert into customers values (3005,'Graham Zusi','California',100,5002)
  insert into customers values (3008,'Julian Green','London',100,5002)
  insert into customers values (3004,'Fabian Johnson','Paris',100,5006)
  insert into customers values (3009,'Geoff Cameron','Berlin',100,5003)
  insert into customers values (3003,'Jozy Altidor','Moscow',100,5007)
  insert into customers values (3001,'John Brad Guzan','London',NULL,5005)

  select * from customers 
  where city='New York'
  order by cust_name ASC

  select * from customers 
  where cust_name like '%John%' And city='New York' or city='London' or city='Paris'

  select * from customers 
  where  city='New York' or city='London' 

  select * from orders
  where purch_amt>500

  select* from salesman
  where namee like '_a%'

  update salesman
  set comission =comission+0.5
  where city='San Jose'

  select * from orders 
  order by ord_date desc

 SELECT LEFT(namee, charindex(' ', namee) - 1) AS firstName
FROM salesman;

SELECT * FROM orders 
WHERE MONTH(ord_date) = 01

SELECT * FROM orders 
WHERE MONTH(ord_date) = 10 

SELECT DAY(ord_date) AS DayOfMonth  
from orders
WHERE MONTH(ord_date) = 10 

SELECT Year(ord_date) AS Year  
from orders
WHERE MONTH(ord_date) = 10 
SELECT Month(ord_date) AS Month  
from orders
WHERE MONTH(ord_date) = 10 


 update orders
  set purch_amt =purch_amt*3
  where MONTH(ord_date) = 10
  
  select * from orders

  SELECT * FROM orders WHERE year(ord_date) between 2011 and 2013

  select top 1* from salesman
  order by  salesman_id desc
