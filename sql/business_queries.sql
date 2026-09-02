-- =====================================================
-- E-Commerce Customer Behavior Analysis
-- Business SQL Queries
-- Database: SQLite
-- Table: customers
-- =====================================================

-- 1. Overall Business Snapshot
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT "Customer ID") AS unique_customers,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_order_value,
    ROUND(AVG("Review Rating"), 2) AS avg_rating
FROM customers;


-- 2. Category Performance
SELECT 
    Category,
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_order_value,
    ROUND(AVG("Review Rating"), 2) AS avg_rating
FROM customers
GROUP BY Category
ORDER BY total_revenue DESC;


-- 3. Gender Analysis
SELECT 
    Gender,
    COUNT(*) AS total_orders,
    COUNT(DISTINCT "Customer ID") AS unique_customers,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend,
    ROUND(AVG("Previous Purchases"), 1) AS avg_previous_purchases
FROM customers
GROUP BY Gender
ORDER BY total_revenue DESC;


-- 4. Subscription Impact
SELECT 
    "Subscription Status",
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend,
    ROUND(AVG("Previous Purchases"), 1) AS avg_previous_purchases,
    ROUND(AVG("Review Rating"), 2) AS avg_rating
FROM customers
GROUP BY "Subscription Status";


-- 5. Seasonal Performance
SELECT 
    Season,
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_aov
FROM customers
GROUP BY Season
ORDER BY total_revenue DESC;


-- 6. Discount Impact
SELECT 
    "Discount Applied",
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_order_value
FROM customers
GROUP BY "Discount Applied";


-- 7. Top 10 Locations by Revenue
SELECT 
    Location,
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend
FROM customers
GROUP BY Location
ORDER BY total_revenue DESC
LIMIT 10;


-- 8. Age Group Performance
SELECT 
    Age_Group,
    COUNT(*) AS total_orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend
FROM customers
GROUP BY Age_Group
ORDER BY total_revenue DESC;


-- 9. High Value Customer Analysis
SELECT 
    High_Value_Customer,
    COUNT(*) AS customer_count,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS total_revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend,
    ROUND(SUM("Purchase Amount (USD)") * 100.0 / (SELECT SUM("Purchase Amount (USD)") FROM customers), 2) AS revenue_share_pct
FROM customers
GROUP BY High_Value_Customer;


-- 10. Category + Gender Breakdown
SELECT 
    Category,
    Gender,
    COUNT(*) AS orders,
    ROUND(SUM("Purchase Amount (USD)"), 2) AS revenue,
    ROUND(AVG("Purchase Amount (USD)"), 2) AS avg_spend
FROM customers
GROUP BY Category, Gender
ORDER BY Category, revenue DESC;


-- 11. Top High-Value Customers
SELECT 
    "Customer ID",
    Age,
    Gender,
    Category,
    "Purchase Amount (USD)",
    "Previous Purchases",
    "Subscription Status",
    Location
FROM customers
WHERE "Previous Purchases" >= 40 
  AND "Purchase Amount (USD)" >= 80
ORDER BY "Purchase Amount (USD)" DESC
LIMIT 15;
