# 📲 SMS Campaign Performance Dashboard

### Analyzing lead conversion, timing strategy, and prioritization using SQL and Tableau.

This project investigates how customer demographics, outreach timing, and contact frequency influence conversion rates in a real-world SMS campaign. Insights were developed using SQL-based analysis and brought to life through interactive Tableau dashboards.

---

## 🧾 Executive Summary

This dashboard answers three key questions critical to SMS campaign performance:

1. **Which customer segments respond best to SMS outreach messages?**
2. **How does the timing or frequency of contact affect conversion rate?**
3. **If we can only reach 20% of leads, who should we prioritize?**

### 📊 Dashboard Overview

- Visualizations include:
  - Conversion rates by customer segment (job, marital status, education)
  - Conversion trends by contact frequency and previous campaign timing
  - A prioritization matrix identifying high-value, high-likelihood leads

> 🔗 [View the live dashboard on Tableau Public](YOUR_TABLEAU_PUBLIC_LINK_HERE)

![Dashboard Preview](images/dashboard_preview.png)

---

### ✅ Actionable Recommendations

- **Focus SMS campaigns on “blue-collar” professions** (e.g., technicians and blue-collar workers) with high conversion rates.
  - *📣 Marketing Team Insight:* Helps refine message targeting and A/B testing by job-based segments.

- **Avoid over-contacting leads** — conversion rates drop sharply after 3+ campaign contacts.
  - *🧠 Operations/Compliance Insight:* Prevents oversaturation and maintains campaign integrity.

- **Prioritize leads with high account balances and previous contact success** (based on `balance` and `pdays`) for best ROI.
  - *💰 Finance Team Insight:* Supports resource allocation for higher-value client pools.

- **Maximize outreach during high-performing months like May and August.**
  - *📆 Marketing + Sales Insight:* Schedule messaging when conversion probability peaks.

---

## 🔍 Deep Dive: Analytical Approach

### 🧮 Dataset Overview
- Real-world dataset from a Portuguese bank's marketing campaign
- ~41,000 records of customer outreach with attributes like job, education, contact duration, and subscription status

### 💾 SQL-Powered Analysis
- Cleaned and normalized data using calculated fields for `Conversion Rate (%)`, `Basket Size`, and contact recency
- Performed segmentation, time-series analysis, and lead scoring using MySQL

### 📊 Tableau Visualizations
- Bar charts for segment comparisons
- Heatmaps for timing sensitivity
- Scatter plots for prioritization scoring

---

## 🔗 Data Source

This dataset originates from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/bank+marketing), titled "Bank Marketing Data Set." It represents marketing efforts by a Portuguese banking institution and is publicly available for educational and analytical purposes.

---

## 🛠️ Tools Used

- **SQL (MySQL dialect):** For exploratory queries and calculated metrics
- **Tableau Public:** For dashboard development and executive reporting
- **Python (Pandas):** Used for data cleaning prior to import

---

## 📁 Repository Structure

```
sms-campaign-analysis/
│
├── data/
│   └── bank_sms_campaign_cleaned.csv
│
├── sql/
│   ├── sms_campaign_table_setup.sql
│   ├── q1_best_segments.sql
│   ├── q2a_frequency_effect.sql
│   ├── q2b_timing_effect.sql
│   └── q3_lead_prioritization.sql
│
├── images/
│   └── dashboard_preview.png
│
├── README.md
```

---

## 👋 About the Analyst

**Jeremy Gutierrez**  
Aspiring Data Analyst with a passion for using SQL and AI-assisted tools to uncover meaningful business insights.  
[Connect on LinkedIn](https://www.linkedin.com/in/your-profile) | [View my GitHub](https://github.com/your-profile)