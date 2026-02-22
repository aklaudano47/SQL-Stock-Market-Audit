# Financial Data Integrity & Quantitative Auditing (SQL)

## Project Overview
This repository demonstrates technical proficiency in SQL for financial data operations. While my primary analytical background is in R (dplyr) and Python (pandas), this project showcases my ability to translate complex data-wrangling logic into performant SQL queries for relational databases.

## Transferable Skills: dplyr to SQL Mapping
I approach SQL with a functional programming mindset, ensuring data integrity at every step of the pipeline:
* **Filtering & Selection:** Mapping `filter()` and `select()` to `WHERE` and `SELECT` for targeted data extraction.
* **Aggregations:** Implementing `group_by() %>% summarize()` logic using `GROUP BY` and aggregate functions to calculate sector-wide metrics.
* **Window Functions:** Utilizing `OVER(PARTITION BY...)` to calculate rolling averages and volatility—a direct translation of `slider` or `tidyquant` functions in R.

## Key Audit Queries
The `market_analysis.sql` script included in this repo covers:
1. **Volatility Analysis:** Identifying high-variance assets by calculating daily price ranges.
2. **Technical Indicators:** Building 5-day moving averages using Window Functions.
3. **Data Quality Checks:** Identifying "ghost tickers" or incomplete trading years to ensure backtest reliability (Data Ops focus).

## Why This Matters for Risk Operations
In a production environment, data must be cleaned before it reaches the model. This project demonstrates my ability to perform "pre-flight" data audits at the database level, reducing the computational load on Python/R analytical environments and ensuring that only high-integrity data enters the strategy pipeline.
