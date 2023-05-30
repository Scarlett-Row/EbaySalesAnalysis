--Sales Tables
SELECT*
FROM dbo.[ebay 23]--year 2023

SELECT*
FROM dbo.[ebay 2022] --year 2022

SELECT*
FROM dbo.[ebay May20-Apr21] --year 2021

--Find total sales revenue and total items sold for years 2021, 2022, 2023 to calclate percentage of total sales and percentage of items sold.
SELECT 'May20-Apr21' AS period, SUM(total_sale) AS year_revenue, SUM(net_sale) AS yearly_net_sale, SUM(qty_sold) AS total_items_sold
FROM [dbo].[ebay May20-Apr21]
UNION ALL
SELECT 'May21-Apr22' AS period, SUM(total_sale) AS year_revenue, SUM(net_sale) AS yearly_net_sale, SUM(qty_sold) AS total_items_sold
FROM [dbo].[ebay 2022]
UNION ALL
SELECT 'May22-Apr23' AS period, SUM(total_sale) AS year_revenue, SUM(net_sale) AS yearly_net_sale, SUM(qty_sold) AS total_items_sold
FROM [dbo].[ebay 23];

--These queries show all sales greater than $25 for years April 2022 -May 2023, April 2021-May 2022, and May 2020 - April 2021, 
--highest sold items at the top.

SELECT*
FROM dbo.[ebay 23] --year 2023
WHERE item_sale > 25
ORDER BY item_sale DESC;

SELECT*
FROM dbo.[ebay 2022] --year 2022
WHERE item_sale > 25
ORDER BY item_sale DESC;

SELECT*
FROM dbo.[ebay May20-Apr21] --year 2021
WHERE item_sale > 25
ORDER BY item_sale DESC;

--Which of the 3 years, generated the highest net sales?
--Year 1 during the Covid-19 Pandemic had highest sales, which have decreased the following 2 years.

SELECT 'May22-Apr23' AS period,SUM(net_sale) AS NetSalesTotal
FROM [ebay 23]
UNION 
SELECT 'May21-Apr22' AS period, SUM(net_sale) AS NetSalesTotal
FROM [ebay 2022]
UNION
SELECT 'May20-Apr21' AS period, SUM(net_sale) AS NetSalesTotal
FROM [ebay May20-Apr21];

--Top 20 Sales from past 3 years
--2023
SELECT TOP 20
	'May22-Apr23' AS period, listing_title, total_sale, item_sale, net_sale
FROM [dbo].[ebay 23]
WHERE item_sale > 25
ORDER BY item_sale DESC;
--2022
SELECT TOP 20
	'May21-Apr22' AS period, listing_title, total_sale, item_sale, net_sale
FROM dbo.[ebay 2022]
WHERE item_sale > 25
ORDER BY item_sale DESC;
--2021
SELECT TOP 20
	'May20-Apr21' AS period, listing_title, total_sale, item_sale, net_sale
FROM dbo.[ebay May20-Apr21]
WHERE item_sale > 25
ORDER BY item_sale DESC;

--Top 60 sales from past 3 years combined, in order of highest net sales.
SELECT TOP 20
	'May22-Apr23' AS period, listing_title, net_sale, total_sale, item_sale
FROM [dbo].[ebay 23]
WHERE item_sale > 25
UNION
SELECT TOP 20
	'May21-Apr22' AS period, listing_title, net_sale, total_sale, item_sale
FROM dbo.[ebay 2022]
WHERE item_sale > 25
UNION
SELECT TOP 20
	'May20-Apr21' AS period, listing_title, net_sale, total_sale, item_sale
FROM dbo.[ebay May20-Apr21]
WHERE item_sale > 25
ORDER BY net_sale DESC;

--How many and what percentage of my top 20 selling products from all three years were sold via a sent/accepted/promo offer?
--Sales using a higher percentage of promos/offers indicate needing help to sell or impatience on seller's part. 
--Also indicate a loss of net profits per item, though more profits in total for increased sales numbers.
--However, items sold also decreased over time, which shows the promos/offers were necessary to keep items moving. 
--These indicators together show the year of Covid 19 as the best sales year in terms of number of items sold and highest profit per item.
SELECT --2023
	'May22-Apr23' AS period,
    COUNT(CASE WHEN promo_sold = 1 THEN 1 END) AS promo_count_of_top20,
    COUNT(CASE WHEN best_offer_sold = 1 THEN 1 END) AS best_offer_accepted_of_top20,
    COUNT(CASE WHEN sent_offer_sold = 1 THEN 1 END) AS sent_offer_count_of_top20,
	(SUM(promo_sold + best_offer_sold + sent_offer_sold)/20 * 100) AS percentage_of_top_20
FROM (
    SELECT TOP 20
        listing_title, total_sale, item_sale, net_sale, promo_sold, best_offer_sold, sent_offer_sold
    FROM [dbo].[ebay 23]
    WHERE item_sale > 25
    ORDER BY net_sale DESC
) AS top_20_items
UNION ALL
SELECT --2022
    'May21-Apr22' AS period,
	COUNT(CASE WHEN promo_sold = 1 THEN 1 END) AS promo_count_of_top20,
    COUNT(CASE WHEN best_offer_sold = 1 THEN 1 END) AS best_offer_accepted_of_top20,
    COUNT(CASE WHEN sent_offer_sold = 1 THEN 1 END) AS sent_offer_count_of_top20,
	(SUM(promo_sold + best_offer_sold + sent_offer_sold)/20 * 100) AS percentage_of_top_20
FROM (
    SELECT TOP 20
        listing_title, total_sale, item_sale, net_sale, promo_sold, best_offer_sold, sent_offer_sold
    FROM [dbo].[ebay 2022]
    WHERE item_sale > 25
    ORDER BY net_sale DESC
) AS top_20_items
UNION ALL
SELECT --2021
    'May20-Apr21' AS period,
	COUNT(CASE WHEN promo_sold = 1 THEN 1 END) AS promo_count_of_top20,
    COUNT(CASE WHEN best_offer_sold = 1 THEN 1 END) AS best_offer_accepted_of_top20,
    COUNT(CASE WHEN sent_offer_sold = 1 THEN 1 END) AS sent_offer_count_of_top20,
	(SUM(promo_sold + best_offer_sold + sent_offer_sold)/20 * 100) AS percentage_of_top_20
FROM (
    SELECT TOP 20
        listing_title, total_sale, item_sale, net_sale, promo_sold, best_offer_sold, sent_offer_sold
    FROM [dbo].[ebay May20-Apr21]
    WHERE item_sale > 25
    ORDER BY net_sale DESC
) AS top_20_items;

--My top 20 selling sent/accepted/promo offers from all three years
SELECT TOP 20 --2023
	listing_title, total_sale, item_sale, net_sale, sent_offer_sold, best_offer_sold, promo_sold
FROM dbo.[ebay 23]
WHERE (promo_sold >= 1.00 OR best_offer_sold >= 1.00 OR sent_offer_sold >= 1.00)
ORDER BY item_sale DESC;