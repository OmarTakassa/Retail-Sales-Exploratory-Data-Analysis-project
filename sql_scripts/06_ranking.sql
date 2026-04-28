--which 5 products generate the highest revenue
SELECT TOP 5
     p.product_name,
     SUM(s.sales_amount) as total_revenue
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_products AS p
        ON s.product_key = p.product_key
GROUP BY p.product_name
ORDER BY  total_revenue DESC
-- By using window function and subquery
SELECT *
FROM (
        SELECT
             p.product_name,
             SUM(s.sales_amount) as total_revenue,
             ROW_NUMBER() OVER(ORDER BY SUM(s.sales_amount) DESC) AS rank_product
        FROM gold.fact_sales AS s
        LEFT JOIN gold.dim_products AS p
                ON s.product_key = p.product_key
        GROUP BY p.product_name)t
WHERE rank_product <= 5

-- What are 5 worst performing products in term of sales 
SELECT TOP 5
     p.product_name,
     SUM(s.sales_amount) as total_revenue
FROM gold.fact_sales AS s
LEFT JOIN gold.dim_products AS p
        ON s.product_key = p.product_key
GROUP BY p.product_name
ORDER BY  total_revenue 
-- By using window function and subquery
SELECT *
FROM (
        SELECT
             p.product_name,
             SUM(s.sales_amount) as total_revenue,
             ROW_NUMBER() OVER(ORDER BY SUM(s.sales_amount)) AS rank_product
        FROM gold.fact_sales AS s
        LEFT JOIN gold.dim_products AS p
                ON s.product_key = p.product_key
        GROUP BY p.product_name)t
WHERE rank_product <= 5
