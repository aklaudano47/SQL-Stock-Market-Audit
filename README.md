# Financial Data Integrity & Quantitative Auditing (SQL)

## Project Overview
This project demonstrates the application of SQL for financial data operations and quality assurance. Using an in-memory SQLite database, I developed a series of audit scripts designed to flag market anomalies and ensure data completeness before it reaches a predictive model.

## Core SQL Functionality
* **Volatility Auditing:** Used aggregate functions and arithmetic operations to calculate daily price ranges and identify assets with abnormal variance.
* **Window Functions:** Implemented `AVG() OVER(PARTITION BY...)` to calculate 5-day rolling moving averages—essential for trend analysis and technical signal generation.
* **Data Integrity Checks:** Designed queries to identify "ghost tickers" or incomplete trading days to prevent backtest bias.

## Technical Workflow (Applied SQL)
Instead of just writing static code, I implemented these queries within a Python/Jupyter environment (`sqlite3`) to simulate a modern data-science pipeline where SQL serves as the primary extraction and cleaning layer.

### Key Results
* **High Volatility Detection:** Successfully isolated tickers (e.g., GE, MSFT) with daily ranges exceeding established risk thresholds.
* **Moving Average Validation:** Validated calculation of technical indicators across partitioned ticker groups.

## Why This Matters
In a Production/Ops role, data quality is the highest priority. This project proves I can audit large datasets at the database level, ensuring that risk models are fed high-integrity information.
