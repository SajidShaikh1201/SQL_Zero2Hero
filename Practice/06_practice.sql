
create database preparation;
use preparation;

create table emp(
	emp_name varchar(20) primary key,
	age int,
    salary int);

insert into emp values
	('Rohan', 29, 25000),
	('Sohan', 30, 35000),
	('Gaurav', 25, 54000),
	('Mahesh', 35, 65400);

-- Find out first highest salary
select max(salary) as maxSalary from emp;

-- Find out 2nd highest salary
select max(salary) as 2nd_highest_salary 
from emp
where salary not in (select max(salary) as maxSalary from emp);

-- lowest salary
select min(salary) as minSalary from emp;

-- 2nd lowest salary
select min(salary) as 2nd_lowest_salary
from emp
where salary not in (select min(salary) from emp);