# Financial Data Integrity & Quantitative Auditing (SQL)

## Project Overview
This project demonstrates the application of SQL for financial data operations and quality assurance. Using an in-memory SQLite database via Python, I developed a series of audit scripts designed to flag market anomalies and ensure data completeness before it reaches a predictive model.

## Core SQL Functionality
* **Volatility Auditing:** Used aggregate functions to calculate daily price ranges and identify assets with abnormal variance (e.g., Identifying outliers in MSFT/GE).
* **Window Functions:** Implemented `AVG() OVER(PARTITION BY...)` to calculate 5-day rolling moving averages—a key technical indicator for institutional signal generation.
* **Data Integrity Checks:** Designed queries to group data by ticker and date to ensure zero gaps in the time-series dataset.

## Technical Implementation
This project utilizes a **Hybrid Python-SQL Workflow**. By leveraging `sqlite3` within a Jupyter environment, I simulated a production data pipeline where raw data is cleaned and audited at the database level before being passed to analytical models.

### Key Results
* **High Volatility Detection:** Successfully isolated tickers (e.g., GE, MSFT) with daily ranges exceeding established risk thresholds.
* **Moving Average Validation:** Validated calculation of technical indicators across partitioned ticker groups.
![SQL Audit Results](data_table.png)

## Why This Matters
In a Production/Ops role, data quality is the highest priority. This project proves I can audit large datasets at the database level, ensuring that risk models are fed high-integrity information.
