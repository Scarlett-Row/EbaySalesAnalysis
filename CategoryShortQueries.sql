------What categories accounted for most sales?------
--change year for desired view
SELECT * --2023 (106 lines broad categories)
FROM May22_Apr23_Category_Sales;

--Query to search specific items/categories
SELECT category, cat_sales, one_time_buyers, avg_sales_price_per 
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%music%';

--Sales and Quantity of items sold by Category
--Year 2023
SELECT 'Collectibles' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%collectibles>%'
UNION ALL
SELECT 'Clothing' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%clothing, Shoes & Accessories%'
UNION ALL
SELECT 'Toys' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%toys & hobbies>%'
UNION ALL
SELECT 'Electronics' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%Consumer Electronics%'
UNION ALL
SELECT 'Crafts' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%craft%'
UNION ALL
SELECT 'Home' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%home & garden>%'
UNION ALL
SELECT 'Dolls' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%dolls%'
UNION ALL
SELECT 'Books' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%books%'
UNION ALL
SELECT 'Sporting' AS category, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%sport%'
ORDER BY cat_sales DESC;