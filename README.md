# 📊 SQL-Based Sales Data Analysis

This project demonstrates practical SQL skills by analyzing a simple sales database using PostgreSQL. It focuses on real-world data analysis tasks such as customer behavior, revenue analysis, and product performance using JOINs, aggregations, and subqueries.

## 🛠️ Technologies Used
* PostgreSQL
* SQL
* pgAdmin 4

## 🗂️ Database Schema
The project uses four relational tables. Relationships are established using foreign keys to enable multi-table analysis.

* **customers** – Customer information
* **products** – Product details and prices
* **orders** – Order records
* **order_items** – Products included in each order

## 📁 Project Structure

```text
sql-sales-data-analysis/
├── schema.sql              # Database tables and relationships
├── data.sql                # Sample data inserts
├── analysis_queries.sql    # Analytical SQL queries
└── README.md
```
## 🔍 Key SQL Concepts Demonstrated
* INNER JOIN across multiple tables
 
* GROUP BY and aggregate functions (SUM, AVG)

* Subqueries

* Sorting and filtering results

* Realistic analytical queries

## 📈 Analysis Examples
* The project answers questions such as:

* Total revenue per order

* Top spending customer

* Best-selling products

* Revenue by country

* Average order value

## 🚀 How to Run
* Create a new PostgreSQL database.

* Run schema.sql to create tables.

* Run data.sql to insert sample data.

* Execute queries from analysis_queries.sql.
