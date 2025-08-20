# Data Warehouse Project
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

✅ Documentation: Built a data catalogue, flow diagrams, and architecture diagrams for easy maintenance and onboarding.

✅ Quality Assurance: Wrote test and validation scripts to ensure data integrity and capture lineage.

# 📊 Tech Stack
Database: Microsoft SQL Server
Languages: T-SQL

Data Modeling: Star Schema, Flat Tables, Aggregated Tables

Data Formats: CSV
