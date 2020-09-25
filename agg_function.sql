use Employeenew
create table employee( Id int primary key identity,Name varchar(50),Gender varchar(50),Email varchar(50),city varchar(50), salary int)
select * from employee
insert into employee values('priyanka','female','p@p1gmail.com','shahada',603758),
('yogita','female','y@y1gmail.com','nashik',403758),
('kailash','male','k@k1gmail.com','shahada',303758),
('monoj','male','m@m1gmail.com','malegaon',503758),
('uday','male','u@u1gmail.com','jalgoan',803758),
('pallav','female','p@p7gmail.com','shahada',600000),
('manish','male','m@p8gmail.com','mumbai',903758),
('sardha','female','a@a1gmail.com','shirpur',546377),
('aruna','female','a@a1gmail.com','pune',564358),
('chetana','female','c@c1gmail.com','nagpur',665758),
('manisha','female','j@j1gmail.com','amravti',473892),
('sagar','male','g@g1gmail.com','ujjen',785658),
('swapnil','male','h@h1gmail.com','shahada',654358)

select gender ,max(salary) from employee
group by gender
 
select min(salary) from employee
select * from employee

select sum(salary) as total from employee

select count(salary) from employee

--Highest salary
select top 1 salary from employee order by salary desc
--2nd highst
select top 1 salary from
(select top 2 salary from employee order by salary desc) as salary
 order by salary asc 
 --3d
select top 1 salary from
(select top 3  salary from employee order by salary desc)as salary
order by salary 

select * from employee
--highest 4th salary in table with top use
select top 1 salary from
(select top 4 salary from employee order by salary desc) as salary
order by salary

--last 3rd salary 
select top 1 salary from
(select  top 3 salary from employee order by salary )as salary
order by salary desc
--top 5 salary  with name gender
select top 1 salary,name,gender from
(select  top 5 salary ,name,gender from employee order by salary desc)as r
order by salary   

--***highest salary***
--highest salary with name,gender
--1)
select top 1 salary,gender,name from employee order by salary desc
--2)
select max(salary) as salary,Gender from employee
group by Gender 
--delete constraint after delete column
alter table employee drop constraint DF__employee__mail__269AB60B

alter table employee drop column mail

--1)minimun salary citywise
 select min(salary) as salary ,city from employee
 group by city
--2)minimun salary gendderwise
select min(salary) as salary,gender from employee
group by Gender
--3) citywise avrege salary
select avg(salary)as salary,city as salary from employee
group by city

--4)total salary citywise
select sum(salary) ,city from employee 
group by city

--5)gender and citywise minumun salary
select min(salary)as salary,Gender from employee
group by city,Gender

select min(salary),gender from employee group by gender 
--remove dublication
select distinct city from employee

select * from employee

update employee set city='pune' where id in(5,7,9)
update employee set city='nashik' where id in(6,8,10)
use master
select SCOPE_IDENTITY () as g
select @@IDENTITY
select IDENT_CURRENT ('employee')







