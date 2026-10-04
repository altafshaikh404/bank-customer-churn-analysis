# Bank Customer Churn Analysis

## Project Overview

This project analyzes customer churn for a retail bank to identify key churn patterns, high-risk customer segments, and potential retention opportunities.

The project follows an end-to-end data analytics workflow:

**Python → Data Cleaning → MySQL/SQL Analysis → Power BI Dashboard → Business Insights**

The goal was to work with a messy customer dataset and perform the type of cleaning, analysis, and visualization expected in a real-world Data Analyst project.

---

## Business Questions

* What is the overall customer churn rate?
* Which countries have the highest churn?
* Which age groups are most likely to churn?
* How does customer activity affect churn?
* Does the number of products relate to customer churn?
* How do credit score and salary segments differ in churn?
* Which customer segments represent higher financial risk?
* Which high-balance customers have already churned?

---

## Data Cleaning — Python

The original dataset contained missing values, invalid values, and other data-quality issues.

Using **Python and Pandas**, I performed:

* Missing-value identification and treatment
* Median imputation for selected numerical columns
* Mode imputation for categorical/discrete columns
* Handling unknown gender values
* Identification and treatment of invalid tenure values
* Duplicate/data-quality checks
* Data-type validation
* Export of the cleaned dataset for further analysis

The cleaned dataset was then used for SQL analysis and Power BI visualization.

---

## SQL Analysis — MySQL

After cleaning the data, I loaded the dataset into MySQL and performed analytical queries to investigate customer churn.

The analysis covered:

* Overall churn rate
* Churn by geography
* Churn by age group
* Active vs inactive customers
* Geography and gender combinations
* Churn by number of products
* Credit-card holders vs non-holders
* Average tenure comparisons
* Balance comparisons
* Customers above country-level average balance
* Highest-balance customers by geography
* Salary and balance comparisons
* Churn by card type and geography
* Customer activity and product combinations
* High-risk customer identification
* Top customers by balance within each geography
* Window-function based customer comparisons
* Risk categorization using SQL `CASE`

The SQL queries are available in the `sql/` folder.

---

## Power BI Dashboard

I created a **2-page interactive Power BI dashboard** to communicate the analysis.

### Page 1 — Customer Churn Overview

The first page focuses on overall customer churn and customer characteristics.

Key visuals include:

* Total Customers
* Churned Customers
* Retained Customers
* Churn Rate
* Average Balance
* Churn Rate by Geography
* Churn Rate by Age Group
* Churn Rate by Number of Products
* Active vs Inactive Member Churn
* Customer Distribution by Card Type
* Geography & Gender Churn Analysis

### Page 2 — Churn Drivers & Risk Analysis

The second page focuses on potential churn drivers and higher-risk customer segments.

Key visuals include:

* Average Credit Score
* Average Salary
* Average Tenure
* Average Balance
* Churn Rate by Credit Score Group
* Churn Rate by Salary Group
* Churn Rate by Risk Category
* Geography & Card Type Analysis
* Churned Customers by Tenure
* Top 10 High-Balance Churned Customers

---

## Key Findings

### Customer & Geographic Patterns

* The overall dataset contains approximately **10,000 customers**, with churn representing roughly **20%** of the customer base.
* **Germany** shows a substantially higher churn rate than France and Spain.
* Female customers show a higher churn rate than male customers in the analyzed dataset.
* Certain middle-aged customer segments show considerably higher churn than younger groups.

### Behavioral Patterns

* Inactive members have a noticeably higher churn rate than active members.
* Customers with certain product counts show substantially different churn rates.
* Customers holding 3 or more products show unusually high churn in the dataset and should be investigated further for potential data or business-process explanations.

### Financial & Risk Patterns

* Churn varies across credit-score and salary segments.
* Higher-risk customer segments show substantially higher churn.
* High-balance churned customers represent an important segment for potential retention analysis.

> **Note:** These findings describe patterns observed in the dataset and should not automatically be interpreted as causal relationships.

---

## Business Recommendations

### 1. Investigate the German Market

The significantly higher churn rate in Germany suggests that customer experience, pricing, product fit, or service-related factors should be investigated further.

### 2. Re-engage Inactive Customers

Inactive customers show higher churn, making them a potential target for engagement campaigns and proactive retention efforts.

### 3. Investigate Multi-Product Customers

The unusually high churn among customers with 3+ products should be investigated to understand whether it is related to customer dissatisfaction, product complexity, or data-quality issues.

### 4. Prioritize High-Value Churned Customers

Customers with high balances who have already churned represent potentially significant financial impact and could be prioritized for deeper retention analysis.

---

## Tools & Technologies

| Area                   | Tools          |
| ---------------------- | -------------- |
| Data Cleaning          | Python, Pandas |
| Data Analysis          | MySQL, SQL     |
| Data Visualization     | Power BI       |
| Dashboard Calculations | DAX            |
| Version Control        | Git, GitHub    |

---

## Project Workflow

```text
Raw Customer Data
       ↓
Python / Pandas
Data Cleaning & Validation
       ↓
Cleaned Dataset
       ↓
MySQL
SQL Analysis
       ↓
Power BI
Data Modeling & Visualization
       ↓
Dashboard
       ↓
Business Insights & Recommendations
```

---

## Repository Structure

```text
Bank-Customer-Churn-Analysis/
│
├── Data/
│   ├── raw/
│   └── cleaned/
│
├── Python/
│   └── data_cleaning.ipynb
│
├── Sql/
│   └── churn_analysis.sql
│
├── Power BI/
│   └── Bank_Customer_Churn_Dashboard.pbix
│
├── Screenshots/
│   ├── page1_overview.png
│   └── page2_risk_analysis.png
│
└── README.md
```

---

## Project Objective

This project was built to demonstrate an end-to-end Data Analyst workflow, including data cleaning, SQL analysis, data visualization, dashboard development, and business-oriented interpretation of analytical findings.
