
# 📲 SMS Campaign Analysis Dashboard

### Driving smarter outreach by analyzing customer response behavior from SMS campaigns.

This project analyzes a real-world bank marketing dataset to uncover how customer demographics, contact strategies, and past behaviors influence the success of SMS outreach campaigns. Through SQL-based analysis and Tableau visualizations, we identify high-converting segments and guide prioritization for future efforts.

---

## 📈 Dashboard Overview

**🔗 [View Live Dashboard on Tableau Public](YOUR_TABLEAU_LINK_HERE)**  
*(click the link to explore the interactive dashboard)*

---

## 🧾 Executive Summary

This dashboard presents the results of an analysis on over 45,000 customer contact records from an SMS marketing campaign. It answers three key stakeholder questions:

1. **Which customer segments respond best to SMS outreach messages?**  
2. **How does the timing or frequency of contact affect conversion rate?**  
3. **If we can only reach 20% of leads, who should we prioritize?**

### 📌 Highlights:
- Conversion rates vary significantly across **job types and education levels**
- **Contact frequency** beyond 2–3 touches correlates with reduced effectiveness
- Clients with **previous successful contact outcomes** and **higher balances** show the greatest conversion potential

---

## 🔍 Deep Dive: Analytical Approach

### ✅ Dataset Features
- 45,211 customer records
- Fields include demographics (`age`, `job`, `education`), financial info (`balance`, `loan`), and contact strategy (`campaign`, `pdays`, `previous`)

### 🧮 SQL Analysis Highlights
- Conversion rates calculated across multiple customer segments
- Aggregated and visualized contact performance by campaign frequency and time of year
- Prioritized high-value leads based on response likelihood and financial indicators

### 📉 Data Cleansing
- All `'unknown'` values converted to `NULL` where appropriate
- Removed bias-prone columns from modeling (e.g., `duration`)

---

## 🔗 Data Source

This dataset originates from the **Bank Marketing Dataset** hosted by the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/222/bank+marketing). It contains data collected from direct marketing campaigns (via phone calls) of a Portuguese banking institution conducted between 2008–2010.

> **Source**: Moro, S., Laureano, R. and Cortez, P. (2014). A Data-Driven Approach to Predict the Success of Bank Telemarketing. Expert Systems with Applications, 42(2), 626-636.

---

## 💡 Recommendations

Based on the data-driven insights from this project, we recommend:

- 🎯 **Targeting clients in white-collar roles** (e.g., management, admin) with a strong education background
- ⏱️ **Limiting outreach frequency** to avoid diminishing returns after 2–3 contacts
- 🏆 **Prioritizing leads with prior positive outcomes** and higher-than-average balances
- 🚫 Excluding or re-routing resources away from low-yield segments (e.g., clients with no prior contact history and lower financial standing)

---

## 🛠️ Tools Used

- **SQL (MySQL dialect)**: Querying, aggregation, and segmentation logic
- **Tableau Public**: Dashboard design and interactive filtering
- **Python (Pandas)**: Data cleaning and export for SQL ingestion

---

## 📁 Repository Contents

- `bank_sms_campaign_cleaned.csv` – Cleaned dataset used for Tableau
- `sms_campaign_table_setup.sql` – Table creation script
- `q1_best_segments.sql` – Query: best-responding customer segments
- `q2a_frequency_effect.sql` – Query: contact frequency vs. conversion
- `q2b_timing_effect.sql` – Query: timing of contact vs. conversion
- `q3_lead_prioritization.sql` – Query: identifying top 20% of leads
- `README.md` – Full executive summary, technical walkthrough, and recommendations

---

## 👋 About the Analyst

**Jeremy Gutierrez**  
Aspiring Data Analyst focused on campaign performance, customer segmentation, and actionable insights.  
Let’s connect: [LinkedIn](https://www.linkedin.com/in/your-profile) | [GitHub](https://github.com/your-profile)
