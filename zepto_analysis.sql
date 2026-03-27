CREATE DATABASE zepto_project;
USE zepto_project;

describe zepto;
SELECT * FROM zepto LIMIT 10;
SELECT Category , name , mrp FROM zepto 
LIMIT 10;
UPDATE zepto 
SET name = TRIM(name);

UPDATE zepto
SET name = TRIM(name)
WHERE name LIKE '% ' OR name LIKE ' %';

ALTER TABLE zepto
ADD id INT AUTO_INCREMENT PRIMARY KEY;
UPDATE zepto
SET name = TRIM(name)
WHERE id > 0;
SELECT name
FROM zepto
WHERE name LIKE '% ' OR name LIKE ' %';

SELECT name, mrp
FROM zepto
ORDER BY mrp DESC
LIMIT 10;
SELECT DISTINCT name, mrp
FROM zepto
ORDER BY mrp DESC
LIMIT 10;
SELECT Category, AVG(mrp) AS avg_price
FROM zepto
GROUP BY Category
ORDER BY avg_price DESC;


SELECT outOfStock, COUNT(*)
FROM zepto
GROUP BY outOfStock;


SELECT 
    CASE 
        WHEN mrp < 2000 THEN 'Low'
        WHEN mrp BETWEEN 2000 AND 10000 THEN 'Medium'
        ELSE 'High'
    END AS price_range,
    COUNT(*) 
FROM zepto
GROUP BY price_range;