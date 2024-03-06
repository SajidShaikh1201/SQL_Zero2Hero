create database practice;
use practice;

-- Create table
create table sales(
	salesID INT PRIMARY KEY,
    items VARCHAR(20)  NOT NULL,
    price INT
);


-- Simple CRUD Operation
INSERT INTO sales(salesID, items, price)
VALUES (1, "Sugar", 45), (2, "Jagery", 95), (3, "Gems", 80), (4, "Dal", 16), (5, "Rice", 45), (6, "Oil", 40), (7, "Eggs", 50);

select * from sales;

update sales set price = 78 where salesID = 1;

delete from sales where salesID = 7;

-- Add column to the existing table
ALTER TABLE sales ADD COLUMN quantity INT;

-- Add some data in additional column
UPDATE sales SET quantity = 10 WHERE salesID IN (1,2,3,4,5,6);
