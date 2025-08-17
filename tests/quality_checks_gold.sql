/*
===============================================================================
Quality Checks
===============================================================================
Script Purpose:
    This script executes quality checks to validate the integrity, consistency,
    and accuracy of the Gold Layer. Specifically, it ensures:
    - Surrogate keys in dimension tables are unique.
    - Referential integrity is maintained between fact and dimension tables.
    - Relationships within the data model are valid for analytical use.

Usage Notes:
    - Run these checks after loading data into the Silver Layer.
===============================================================================
*/

-- Checking `gold.dim_customers`

-- Check for Uniqueness of Customer Key in gold.dim_customers
-- Expectation: No results
SELECT
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ===================================================================
-- Checking `gold.product_key`
-- ===================================================================
-- Check for Uniqueness of Product Key in gold.dim_products
-- Expectation: No results
SELECT
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ===================================================================
-- Checking `gold.fact_sales`
-- ===================================================================
-- Check the data model connectivity between fact and dimensions
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL;
