# Bank Customer Churn Analysis

## Project Summary
This project analyzes customer churn for a retail bank to uncover key attrition drivers and high-risk segments. Using **Python** for data cleaning, **MySQL** for analytical querying, and **Power BI** for visualization, I built an end-to-end analytics workflow to help drive data-informed retention strategies.

---

## 🎯 Key Questions Addressed
- What is the overall customer churn rate and financial impact?
- Which regions, age groups, and gender demographics are most at risk?
- How do product holdings, activity levels, and tenure influence retention?
- Which high-value customers represent the largest financial risk?

---

## 📊 Dashboard Findings

### Attrition & Demographics
* **Overall Churn:** Out of **10,000 customers**, **2,036 churned** (**20.36% churn rate**), representing an average customer balance of **$78.39K**.
* **Geographic Risk:** **Germany** has a significantly higher churn rate (**32.5%**) compared to **Spain (16.5%)** and **France (16.3%)**.
* **Age Group Impact:** **Late Middle-Aged** customers are the highest risk segment at a **42.3% churn rate**, followed by **Early Middle-Aged (27.0%)**.
* **Gender Disparity:** Female churn sits at **25.03%** across all regions (peaking at **37.55% in Germany**), compared to **16.56%** for males.

### Behavioral & Financial Drivers
* **Product Holding:** Customers with **2 products** show the best retention (**7.6% churn**), while having **3 products (82.5% churn)** or **4 products (100% churn)** leads to severe customer loss.
* **Activity Levels:** **Inactive members** churn at nearly double the rate (**26.9%**) of active members (**14.4%**).
* **Credit & Salary Tiers:** Low credit scores (around 200) hit a **50.0% churn rate**, while customers in the highest risk category face a **76.5% churn rate**.

---

## 💡 Recommendations
1. **Investigate German Market Friction:** Prioritize service and product feedback in Germany, particularly for female clients.
2. **Review Multi-Product Bundles:** Audit the experience for clients holding 3+ products to prevent product fatigue and dissatisfaction.
3. **Re-engage Inactive Accounts:** Launch targeted engagement campaigns to convert inactive users before they churn.
4. **Middle-Age Retention Offers:** Develop tailored financial products aimed at the 40–60 age group.

---

## 🛠️ Stack Used
* **Data Cleaning:** Python (Pandas)
* **Database & Querying:** MySQL
* **Dashboard & DAX:** Power BI
* **Version Control:** Git & GitHub

---

## 📁 Repository Structure
```text
├── data/            # Raw & cleaned datasets
├── python/          # Data cleaning Jupyter notebooks
├── sql/             # Analytical SQL queries
├── powerbi/         # Interactive Power BI report (.pbix)
└── screenshots/     # Dashboard preview screenshots
```