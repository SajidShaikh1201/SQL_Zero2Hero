-- create table named products
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(30),
  price DECIMAL(10,2),
  in_stock INT
);

-- Generate 100 rows 
INSERT INTO products (product_id, product_name, category, price, in_stock)
WITH RECURSIVE cte AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM cte WHERE n < 100
)
SELECT 
    n,
    CONCAT('Product ', n),
    ELT(n % 5 + 1, 'Electronics', 'Clothing', 'Toys', 'Books', 'Home'),  -- Cycle categories
    ROUND(RAND() * 100 + 10, 2), -- Random price 10-110
    FLOOR(RAND() * 50)           -- Random stock
FROM cte;

SELECT * FROM products;

SELECT SUM(revenue) AS total FROM 
(SELECT *, (price * in_stock) AS Revenue FROM products
WHERE category = "Clothing") AS revenue_table;