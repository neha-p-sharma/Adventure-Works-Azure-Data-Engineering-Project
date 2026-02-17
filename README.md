# 🚀 End-to-End Azure Data Engineering Project – Adventure Works

## 📌 Project Overview

This project demonstrates a complete modern Azure Data Engineering pipeline using Medallion Architecture (Bronze, Silver, Gold).

The solution ingests raw data from an external HTTP source (Git-based repository), processes and validates it using Azure Data Factory, performs enrichment using Azure Databricks, and finally curates analytics-ready data using Azure Synapse Serverless SQL.

---

# 🏗 Architecture Flow

## 🔹 Data Source
- HTTP Server (Git-hosted raw files)
- Data retrieved in raw format (CSV/Parquet)

## 🔹 Bronze Layer (Raw Ingestion)
- Data landed in Azure Data Lake Storage Gen2
- Raw container stores unprocessed source files
- No transformation applied

## 🔹 Silver Layer (Cleaned & Enriched)
1. Azure Data Factory:
   - Copy activity to move data from raw → silver
   - Validation activities for pipeline monitoring
   - Error handling & dependency management

2. Azure Databricks:
   - Data cleansing
   - Schema enforcement
   - Data enrichment
   - Business logic transformation
   - Overwritten curated parquet files in Silver layer

## 🔹 Gold Layer (Curated Business Layer)
- Azure Synapse Serverless SQL Pool
- OPENROWSET used to query silver parquet files
- Views created for dimensional modeling
- External tables created for analytics consumption

Gold layer provides:
- Fact tables
- Dimension tables
- Business-ready datasets

---

# 🛠 Tech Stack

- Azure Data Factory (ADF)
- Azure Data Lake Storage Gen2
- Azure Databricks (PySpark)
- Azure Synapse Analytics (Serverless SQL Pool)
- SQL
- Parquet Format
- Git & GitHub

---

# 🔄 End-to-End Data Flow

HTTP (Git)  
→ Azure Data Lake (Raw/Bronze)  
→ Azure Data Factory (Copy + Validation)  
→ Silver Layer  
→ Azure Databricks (Transformation & Enrichment)  
→ Silver (Refined Parquet)  
→ Azure Synapse (Views & External Tables)  
→ Gold Layer (Analytics Ready)

---

# 📊 Key Engineering Concepts Implemented

- Medallion Architecture
- Layered Data Lake Design
- Serverless SQL Querying
- Managed Identity & Secure Access
- External Data Sources & File Formats
- Parquet-based optimized storage
- Data validation in ADF pipelines
- Modular and scalable architecture

---

# 🔐 Security & Governance

- Database Scoped Credentials
- Managed Identity authentication
- Role-based access via Azure
- Container-level segregation (raw/silver/gold)

---

# 🚀 Business Value

- Scalable ingestion pipeline
- Cost-efficient serverless analytics
- Structured and curated reporting layer
- Ready for Power BI integration
- Production-style architecture implementation

---

# 👩‍💻 Author

Neha Sharma 

---

# ⭐ Project Highlights

✔ End-to-end Azure implementation  
✔ Real-world Medallion architecture  
✔ Databricks enrichment layer  
✔ Synapse serverless gold layer  
✔ Git version controlled  
