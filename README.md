# 🚀 SQL Data Warehouse Project | Modern Data Engineering with SQL Server

## 📌 Project Summary
This repository showcases an **end-to-end modern Data Warehouse implementation using SQL Server**, built to demonstrate **real-world data engineering concepts** such as **ETL pipelines, Medallion Architecture, dimensional data modeling, and analytics-ready datasets**.

The project is designed as a **portfolio-grade data engineering project**, highlighting practical skills required for Data Analyst / Data Engineer roles.

---

## 🎯 Objectives
- Design a scalable **SQL Server-based Data Warehouse**
- Implement **Medallion Architecture (Bronze, Silver, Gold)**
- Build robust **ETL pipelines using T-SQL**
- Apply **dimensional modeling (Star Schema)**
- Deliver **analytics-ready data** for BI and reporting

---

## 🏗️ Architecture – Medallion Pattern
The project follows the **industry-standard Medallion Data Architecture**:
<img width="766" height="502" alt="data_architecture" src="https://github.com/user-attachments/assets/4b5d3f2b-a126-4d49-9727-6d861ee10098" />

### 🔹 Bronze Layer – Raw Ingestion
- Raw data ingestion from source systems
- No transformations applied
- Schema-on-read approach
- Historical data retained for audit and reprocessing

### 🔹 Silver Layer – Data Cleansing & Transformation
- Data validation and cleansing
- Handling nulls, duplicates, and data inconsistencies
- Business rule application
- Conformed datasets across domains

### 🔹 Gold Layer – Analytics & Reporting
- Star schema implementation
- Fact and Dimension tables
- Aggregated metrics and KPIs
- Optimized for analytical queries

---

## ⚙️ Tech Stack
| Category | Tools |
|-------|------|
| Database | SQL Server |
| Language | T-SQL |
| ETL | SQL-based ETL |
| Modeling | Dimensional Modeling |
| Architecture | Medallion (Bronze/Silver/Gold) |

---


## 🔄 ETL Pipeline Overview
### Extract
- Ingests data from structured sources (CSV / OLTP tables)
- Loads data into **Bronze tables** without transformations

### Transform
- Cleans and standardizes data in **Silver layer**
- Applies business logic and validation rules
- Prepares conformed datasets

### Load
- Loads analytics-ready data into **Gold layer**
- Creates fact and dimension tables
- Builds aggregated datasets for reporting

---

## 👤 Author
**Veeranna Desai**  
Aspiring Data Analyst | Data Engineering Enthusiast  

📁 Explore my GitHub projects
