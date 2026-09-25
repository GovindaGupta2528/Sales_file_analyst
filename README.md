# Sales_file_analyst
Sales Analyst with hands-on experience working on multiple sales data projects using Python, Pandas, SQL, Excel, and Power BI. Skilled in data cleaning, analysis, visualization, dashboard creation, sales trend analysis, revenue tracking, and extracting business insights to support data-driven decisions.
# Data Analysis Portfolio

This repository contains three independent data analysis projects: a SQL-based restaurant analysis, a Power BI mobile sales dashboard, and a Python EDA notebook.

---

## 1. Swiggy Restaurant Data Analysis (SQL)

**Files:** `Swiggy_Sample_Project.sql`, `swiggy_rest.csv`

Analysis of a nationwide Swiggy restaurant dataset (**61,425 rows** across **534 cities** and **107 cuisines**) using MySQL.

**Dataset columns:** `id`, `name`, `city`, `rating`, `rating_count`, `cuisine`, `cost`, `link`

**Business questions answered:**
- Least-visited restaurant in Abohar (by rating count)
- Highest revenue-generating restaurant in India (`cost × rating_count` as a revenue proxy)
- Restaurants rated above / below the national average rating
- Highest revenue-generating restaurant in Delhi
- Restaurant chain with the most outlets
- Restaurant chain with the highest total revenue
- City with the most restaurants
- City with the highest total revenue
- Top 10 most expensive cuisines (by average cost)
- City with the highest average biryani orders
- Top 10 unique (non-chain) restaurants by revenue

**How to run:**
1. Import `swiggy_rest.csv` into a MySQL table named `swiggy_rest` in a database called `swiggy`.
2. Run the queries in `Swiggy_Sample_Project.sql` sequentially.

> Note: revenue in this analysis is approximated as `cost × rating_count`, since no direct order/revenue field exists in the source data.

---

## 2. Mobile Sales Dashboard (Power BI)

**Files:** `final_data__1_.pbix`, `mobile_sales_data.csv`

An interactive Power BI dashboard built on a mobile phone sales dataset (**3,835 transactions**, 2021–2024, across **19 Indian cities**).

**Dataset columns:** `Transaction ID`, `Day`, `Month`, `Year`, `Day Name`, `Brand`, `Units Sold`, `Price Per Unit`, `Customer Name`, `Customer Age`, `City`, `Payment Method`, `Customer Ratings`, `Mobile Model`

**Brands covered:** Apple, Samsung, OnePlus, Vivo, Xiaomi

**Dashboard highlights (based on embedded report visuals):**
- Total sales, quantity sold, average price, and transaction count KPI cards
- Breakdown by brand, city, mobile model, and payment method
- Trends over time (day / month / year)

**How to open:** Open `final_data__1_.pbix` in Power BI Desktop. Refresh the data source to point at `mobile_sales_data.csv` if the file path has changed.

---

## 3. Black Friday Sales EDA (Jupyter Notebook)

**File:** `Sales.ipynb`

An exploratory data analysis notebook using `pandas`, `matplotlib`, and `seaborn` on a Black Friday retail purchase dataset.

**Analysis performed:**
- Data cleaning (dropping sparse columns, checking nulls, recoding categorical fields such as `Gender`, `City_Category`, `Marital_Status`)
- Univariate exploration of customer demographics (age, gender, occupation, city category, marital status)
- Purchase amount analysis by gender, age group, and city category (pie charts, bar charts)
- Product diversity by age group (unique products purchased)
- Grouped comparisons using `seaborn.countplot`

**Requirements:** `pandas`, `matplotlib`, `seaborn`

**How to run:**
1. Obtain `BlackFriday.csv` (the dataset the notebook loads) and place it in the same directory as `Sales.ipynb`.
2. Open the notebook with Jupyter and run all cells in order.

> Note: `BlackFriday.csv` is not included in this repository and must be sourced separately (e.g., the standard "Black Friday" dataset from Kaggle) for the notebook to run.

---

## Repository Structure

```
.
├── Swiggy_Sample_Project.sql   # SQL queries for restaurant analysis
├── swiggy_rest.csv             # Swiggy restaurant dataset
├── final_data__1_.pbix         # Power BI mobile sales dashboard
├── mobile_sales_data.csv       # Mobile sales dataset
├── Sales.ipynb                 # Black Friday EDA notebook
└── README.md                   # This file
```

## Tech Stack

- **SQL** (MySQL) — querying and aggregation
- **Power BI** — interactive dashboarding
- **Python** (pandas, matplotlib, seaborn) — exploratory data analysis

