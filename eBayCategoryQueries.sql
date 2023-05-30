---Total Category Sales and Items Sold per Category---
----Percentage of total sales that category represents
-----Average revenue per purchase. 

--Year 2021
SELECT 'Collectibles' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%collectibles>%'
UNION ALL
SELECT 'Clothing' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%clothing, Shoes & Accessories%'
UNION ALL
SELECT 'Toys' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%toys & hobbies>%'
UNION ALL
SELECT 'Electronics' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%Consumer Electronics%'
UNION ALL
SELECT 'Crafts' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%craft%'
UNION ALL
SELECT 'Home' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%home & garden>%'
UNION ALL
SELECT 'Dolls' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%dolls%'
UNION ALL
SELECT 'Books' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%books%'
UNION ALL
SELECT 'Sporting' AS category, '2021' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May20_Apr21_Category_Sales
WHERE category LIKE '%sport%'

UNION ALL

--year 2022 follows
SELECT 'Collectibles' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%collectibles>%'
UNION ALL
SELECT 'Clothing' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%clothing, Shoes & Accessories%'
UNION ALL
SELECT 'Toys' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%toys & hobbies>%'
UNION ALL
SELECT 'Electronics' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%Consumer Electronics%'
UNION ALL
SELECT 'Crafts' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%craft%'
UNION ALL
SELECT 'Home' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%home & garden>%'
UNION ALL
SELECT 'Dolls' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%dolls%'
UNION ALL
SELECT 'Books' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%books%'
UNION ALL
SELECT 'Sporting' AS category, '2022' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/6223.56)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/207.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May21_Apr22_Category_Sales
WHERE category LIKE '%sport%'

UNION ALL

--year 2023 follows
SELECT 'Collectibles' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%collectibles>%'
UNION ALL
SELECT 'Clothing' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%clothing, Shoes & Accessories%'
UNION ALL
SELECT 'Toys' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%toys & hobbies>%'
UNION ALL
SELECT 'Electronics' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%Consumer Electronics%'
UNION ALL
SELECT 'Crafts' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%craft%'
UNION ALL
SELECT 'Home' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%home & garden>%'
UNION ALL
SELECT 'Dolls' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%dolls%'
UNION ALL
SELECT 'Books' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%books%'
UNION ALL
SELECT 'Sporting' AS category, '2023' AS year, SUM(cat_sales) AS cat_sales, SUM(one_time_buyers) AS one_time_buyers, FORMAT(ROUND((SUM(cat_sales)/5592.38)*100, 2), '0.##') AS percentage_of_total_sales, FORMAT(ROUND((SUM(one_time_buyers)/197.0)*100, 2), '0.##') AS percentage_of_items_sold, ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM May22_Apr23_Category_Sales
WHERE category LIKE '%sport%'
ORDER BY one_time_buyers DESC;

--Using a CASE statement
SELECT 
    (CASE
        WHEN category LIKE '%collectibles>%' THEN 'Collectibles'
        WHEN category LIKE '%clothing, Shoes & Accessories%' THEN 'Clothing'
        WHEN category LIKE '%toys & hobbies>%' THEN 'Toys'
        WHEN category LIKE '%Consumer Electronics%' THEN 'Electronics'
        WHEN category LIKE '%craft%' THEN 'Crafts'
        WHEN category LIKE '%home & garden>%' THEN 'Home'
        WHEN category LIKE '%dolls%' THEN 'Dolls'
        WHEN category LIKE '%books%' THEN 'Books'
	END AS category, 
    '2021' AS year, 
    SUM(cat_sales) AS cat_sales, 
    SUM(one_time_buyers) AS one_time_buyers, 
    FORMAT(ROUND((SUM(cat_sales)/6675.92)*100, 2), '0.##') AS percentage_of_total_sales, 
    FORMAT(ROUND((SUM(one_time_buyers)/219.0)*100, 2), '0.##') AS percentage_of_items_sold, 
    ROUND(SUM(cat_sales)/SUM(one_time_buyers), 2) AS average_revenue_per_buyer
FROM [dbo].[May20_Apr21_Category_Sales]
WHERE category IN (
    '%collectibles>%',
    '%clothing, Shoes & Accessories%',
    '%toys & hobbies>%',
    '%Consumer Electronics%',
    '%craft%',
    '%home & garden>%',
    '%dolls%',
    '%books%'
)GROUP BY category;
