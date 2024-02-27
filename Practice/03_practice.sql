CREATE TABLE Person (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Person (ID, Name, Age, City) VALUES
(1, 'John Doe', 25, 'New York'),
(2, 'Jane Smith', 30, 'San Francisco'),
(3, 'Alice Johnson', 28, 'Chicago'),
(4, 'Bob Brown', 35, 'Los Angeles'),
(5, 'Eva White', 22, 'Houston'),
(6, 'Michael Davis', 32, 'Seattle');

select * from Person;

-- Display the person name whose name starts with "M"
select * from Person
where Name like 'M%';

-- Display the person name whose name Ends with "n"
select * from Person
where Name like '%n';

-- Display the person names having 'c' in any position in their name
select * from Person
where Name like "%c%";

-- Display the person names not having 'M' in any position in their name
select * from Person
where Name not like "%b%";