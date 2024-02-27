create table department(
    deptName varchar(10),
    empID int,
    salary int
);

insert into department values('sales', 1, 23100);
insert into department values('sales', 2, 32400);
insert into department values('HR', 3, 22300);
insert into department values('HR', 4, 14100);
insert into department values('Tech', 5, 52100);

select * from department;

-- department wise highest salary
select deptName, max(salary) from department
group by deptName;

-- find the total no of employees in each department
select count(*) as total_emp, deptName
from department
group by deptName;

-- find alternate records 
select * from (select row_number() over(order by empID) as rn, empID, deptName 
from department)
where mod(rn, 2) = 1;

-- count duplicate records 
select * from (select count(deptName) as frequency, deptName from department
group by deptName)
where frequency > 1;

-- or 
select count(deptName) as frequency, deptName from department
group by deptName having count(*) > 1;