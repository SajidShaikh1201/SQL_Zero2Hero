CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  salary INT,
  managerId INT
);

-- Input:
--Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
-- Output:
+----------+
| Employee |
+----------+
| Joe      |
+----------+
--Explanation: Joe is the only employee who earns more than his manager.

--Solution -

select E1.name as Employee
from Employee E1
Left join Employee E2
on E1.managerId = E2.id
where E1.salary > E2.salary;