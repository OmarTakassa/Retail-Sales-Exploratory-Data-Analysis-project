-- find the total sales
SELECT
      SUM(sales_amount) AS total_sales
FROM gold.fact_sales

-- find how many items are sold
SELECT
      SUM(quantity) AS total_quantity
FROM gold.fact_sales 

-- find the avg selling price
SELECT 
      AVG(price) AS avg_sales
FROM gold.fact_sales

-- find the total number of orders
SELECT 
      COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales

-- find the total number of customers
SELECT 
      COUNT(customer_key) AS total_customers
FROM gold.dim_customers

-- find the total number of customers that has places the order
SELECT 
      COUNT( DISTINCT customer_key) 
FROM gold.fact_sales

-- find the total number of products
SELECT 
      COUNT(product_name) AS total_products
FROM gold.dim_products


-- generate a report that shows all key metrices of the business
SELECT
      'total_sales' AS measure_name,
      SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL 
SELECT
      'total_quantity',
      SUM(quantity) 
FROM gold.fact_sales
UNION ALL
SELECT 
      'avg_sales',
      AVG(price) 
FROM gold.fact_sales
UNION ALL
SELECT 
      'total_orders',
      COUNT(DISTINCT order_number) 
FROM gold.fact_sales
UNION ALL
SELECT 
      'total_customers',
      COUNT(customer_key)
FROM gold.dim_customers
UNION ALL
SELECT 
      'total_products',
      COUNT(product_name)
FROM gold.dim_products
