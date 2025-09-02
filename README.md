# Data Warehouse + Analytics Project
This project demonstrates a comprehensive data warehousing solution.

# 🏗️ Data Architecture
This project demonstrates the design and implementation of a Medallion Data Architecture (Bronze, Silver, and Gold layers) on Microsoft SQL Server, following best practices for data ingestion, cleansing, transformation, and modeling.
<img width="1755" height="884" alt="Sources" src="https://github.com/user-attachments/assets/095130a7-8480-47b4-8577-b036d4896b19" />

# 📌 Project Overview
Data Sources: Ingested raw datasets in CSV format from CRM and ERP systems.

Bronze Layer: Stored raw data as-is for traceability and lineage.

Silver Layer: Performed data cleansing, standardization, normalization, and enrichment to create high-quality, standardized tables.

Gold Layer: Designed business-ready views using star schemas, flat tables, and aggregated tables to support analytics and reporting.

# ⚙️ Key Features
✅ ETL Automation: Wrote T-SQL stored procedures for batch ETL (full load + truncate & insert strategies).

✅ Data Transformations: Developed reusable SQL scripts for cleansing, enrichment, and aggregations.

✅ Data Modeling: Implemented Star Schema and Aggregated Tables for optimized reporting and analytics.

✅ Documentation: Built a data catalog, flow diagrams, and architecture diagrams for easy maintenance.

✅ Quality Assurance: Wrote test and validation scripts to ensure data integrity and capture lineage.

✅ Production-ready analytics: exploration, magnitude, ranking, change-over-time, cumulative, segmentation, part-to-whole

## 📊 Analytics (Gold layer)

**Overview**  
The `analytics/` folder contains SQL scripts and reports that run against `gold.dim_customers`, `gold.dim_products`, and `gold.fact_sales`. These scripts produce CSV snapshots, aggregated views, and insights-ready outputs for BI tools (Power BI / Tableau / Excel).

**Analyses included**
- **Database exploration:** profiling
- **Magnitude analysis:** top contributors by revenue/quantity
- **Ranking analysis:** leaderboards (top customers, top products), rolling ranks
- **Change-over-time:** MoM/YoY growth, moving windows
- **Cumulative analysis:** cumulative revenue and contribution-to-total
- **Performance analysis:** AOV, repeat rate, KPI bands
- **Segmentation:** RFM or value-based customer/product segments
- **Part-to-whole:** category/product share-of-wallet
- **Business reports:** `report_customers.sql`, `report_products.sql` (CSV outputs for BI)

# 📊 Tech Stack
Database: Microsoft SQL Server
Languages: T-SQL

Data Modeling: Star Schema, Flat Tables, Aggregated Tables

Data Formats: CSV
