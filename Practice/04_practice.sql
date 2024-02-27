CREATE TABLE Person (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Person (ID, Name, Age, City) VALUES
(1, 'John', 25, 'New York'),
(2, 'Smith', 30, 'San Francisco'),
(3, 'Alice', 28, 'Chicago'),
(4, 'Bob', 35, 'Los Angeles'),
(5, 'White', 22, 'Houston'),
(6, 'Davis', 32, 'Seattle');

-- Display the person name whose name contains exactly 4 letters
select * from Person
where Name like "____";
