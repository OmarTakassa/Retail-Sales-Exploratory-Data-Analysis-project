--Find the date of the first and last order
-- How many years of sales are available
SELECT 
      MIN(order_date) AS first_order,
      MAX(order_date) AS last_order,
      DATEDIFF(year, MIN(order_date), MAX(order_date)) AS years_differance
FROM gold.fact_sales

--FIND the youngest and the oldest customer
SELECT 
      MIN(birthdate) AS the_youngest,
      DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
      MAX(birthdate) AS the_oldest,
      DATEDIFF(year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers
