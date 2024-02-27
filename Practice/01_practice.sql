create table emp(
    empID int primary key,
    salary int
);

insert into emp values (1, 23000);
insert into emp values (2, 25000);
insert into emp values (3, 32000);
insert into emp values (4, 13000);
insert into emp values (5, 23500);

-- first highest salary
select max(salary) from emp;

-- finding 2nd highest salary 
select max(salary) from emp
where salary not in (select max(salary) from emp);

-- find 2nd lowest salary 
select min(salary) from emp
where salary not in (select min(salary) from emp);

-- find 2nd highest salary using row_number()
select salary
from (select row_number() over(order by salary desc) as rowNumber, salary
from emp)
where rowNumber = 2;