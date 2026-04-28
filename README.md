# Exploratory Data Analysis: Retail Sales Performance

## Project Overview
This project performs an end-to-end Exploratory Data Analysis (EDA) using SQL to extract actionable business insights from a retail database. The analysis follows a structured 6-step framework to move from raw data to strategic recommendations.

## The Data
The dataset consists of three primary tables structured in a **Star Schema**:
* **`fact_sales`**: Over 60,000 transaction records containing revenue, quantity, and dates.
* **`dim_products`**: Catalog of 295 products including categories (Bikes, Clothing, Accessories) and costs.
* **`dim_customers`**: Profiles of 18,000+ customers including geography and demographics.

---

## 6-Step EDA Framework

### 1. Database Exploration
**Goal:** Understand the "Map" and scale of the environment.
* **Action:** I began by auditing total record counts and schema integrity.
* **Insight:** Confirmed a clean Star Schema relationship between the Fact table (`sales`) and Dimensions (`customers`, `products`).

### 2. Dimensions Exploration
**Goal:** Look at the categorical "Who" and "What."
* **Action:** Analyzed unique values in customer locations, gender, and product categories.
* **Insight:** Identified that the business operates across multiple countries (Australia, Germany, UK, etc.) and offers three distinct product lines (Mountain, Road, and Touring).

### 3. Date Exploration
**Goal:** Understand the "When."
* **Action:** Investigated the timespan of `order_date` and `shipping_date` to identify seasonality.
* **Insight:** Established the historical range of the data and checked for outliers in fulfillment times (shipping vs. due dates).

### 4. Measures Exploration
**Goal:** Analyze the core "Numbers."
* **Action:** Calculated descriptive statistics (Min, Max, Avg) for `sales_amount`, `price`, and `quantity`.
* **Insight:** Defined the "average order value" and identified high-ticket items versus high-volume/low-cost accessories.

### 5. Magnitude
**Goal:** Identify the "Big Picture" contributors.
* **Action:** Aggregated total revenue by category and country to see where the bulk of the money originates.
* **Insight:** Discovered which regions and product categories (e.g., Mountain Bikes) contribute the highest percentage of total company revenue.

### 6. Ranking
**Goal:** Benchmark performance.
* **Action:** Used **Window Functions** (`RANK`, `DENSE_RANK`) to identify the Top 10 products, Top 5 countries, and most valuable customers.
* **Insight:** Created a leaderboard of top-performing assets to help prioritize inventory and marketing spend.

---

## Technical Skills Demonstrated
* **Joins:** Connecting fact and dimension tables.
* **Aggregations:** Using `SUM`, `AVG`, and `COUNT` to summarize data.
* **CTEs & Subqueries:** Organizing complex logic for readability.
* **Window Functions:** Ranking and partitioning data for competitive analysis.
* **Data Cleaning:** Handling nulls and formatting dates within SQL.

1.  Navigate to the `/queries` folder to view the SQL scripts for each step.
2.  Import the `.csv` files provided in the `/data` folder into your preferred SQL engine (PostgreSQL, MySQL, SQL Server).
3.  Execute the scripts in order (1 through 6) to replicate the analysis.
