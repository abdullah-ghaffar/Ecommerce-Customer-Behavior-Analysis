# E-Commerce Customer Behavior Analysis

### Project Report

**Prepared by:** Abdullah Ghaffar
**Role:** Data Analyst
**Date:** September 2026
**Tools Used:** Python, SQL (SQLite), Power BI

---

## 1. Executive Summary

This project presents a complete end-to-end analysis of customer shopping behavior for an online retail business. Using a dataset of 3,900 customer transactions, the analysis covers data cleaning, exploratory data analysis, SQL-based business querying, and the development of an interactive Power BI dashboard.

The primary goal was to identify key drivers of revenue, understand customer segments, evaluate the impact of subscriptions and discounts, and deliver actionable recommendations that can support data-driven decision making.

---

## 2. Business Problem

The online retail company collects customer transaction data but lacks clear visibility into:

- Which product categories and seasons generate the highest revenue
- Differences in spending behavior between male and female customers
- The value difference between subscribed and non-subscribed customers
- The effectiveness of discounts and promo codes
- Identification and retention of high-value customers

**Objective:**
Perform a structured analysis to answer these questions and provide clear, actionable recommendations.

---

## 3. Dataset Description

| Attribute          | Details                                                                         |
| ------------------ | ------------------------------------------------------------------------------- |
| Total Records      | 3,900                                                                           |
| Number of Features | 18                                                                              |
| Time Period        | Single snapshot (behavioral data)                                               |
| Key Dimensions     | Customer demographics, product details, purchase behavior, promotional activity |

**Main Columns:**

- Customer ID, Age, Gender
- Item Purchased, Category, Purchase Amount (USD)
- Location, Size, Color, Season
- Review Rating, Subscription Status
- Shipping Type, Discount Applied, Promo Code Used
- Previous Purchases, Payment Method, Frequency of Purchases

---

## 4. Data Cleaning & Preparation

**Steps Performed:**

1. Loaded the raw dataset and inspected structure, data types, and missing values.
2. Identified 37 missing values in the `Review Rating` column.
3. Imputed missing ratings using the median value (robust against outliers).
4. Confirmed zero duplicate records.
5. Created new analytical features:
   - **Age_Group**: Young (18-24), Adult (25-34), Middle Age (35-49), Senior (50+)
   - **High_Value_Customer**: Flag based on high previous purchases or high purchase amount
   - **Used_Any_Discount**: Combined flag for discount or promo code usage
6. Saved the cleaned dataset for further analysis and dashboard use.

---

## 5. Exploratory Data Analysis (EDA) & SQL Insights

### Key Findings:

**Category Performance**

- Clothing emerged as the top revenue-generating category.
- Clear differences in average order value and order volume across categories.

**Gender Analysis**

- Male customers contributed a higher share of total revenue.
- Spending patterns and category preferences showed noticeable variation by gender.

**Subscription Impact**

- Subscribed customers demonstrated higher average spend and higher number of previous purchases.
- Subscription status is a strong indicator of customer value.

**Seasonality**

- Spring and Fall seasons showed relatively stronger performance.
- Seasonal trends can guide inventory and marketing planning.

**High-Value Customers**

- A smaller group of high-value customers accounts for a significant portion of total revenue.
- These customers represent a critical segment for retention strategies.

**Discount & Promo Codes**

- Usage of discounts and promo codes influences both order volume and average order value.
- Opportunity exists to optimize promotional strategy for better profitability.

---

## 6. Power BI Dashboard

An interactive multi-page Power BI dashboard was developed containing:

- **Executive Overview Page**: KPI cards (Total Revenue, Orders, Customers, AOV, Rating), category performance, and key slicers.
- **Customer Insights Page**: Gender analysis, age group performance, subscription comparison, and high-value customer contribution.
- **Additional Analysis**: Discount impact, location performance, and cross-filtered visuals.

The dashboard allows stakeholders to explore the data dynamically using slicers for Season, Gender, Subscription Status, and Category.

---

## 7. Business Recommendations

1. **Increase Subscription Conversion**Design targeted offers and onboarding campaigns to convert non-subscribers, leveraging the higher value of subscribed customers.
2. **Prioritize Clothing Category**Allocate more marketing budget and inventory focus to Clothing while testing cross-sell strategies for related categories.
3. **Build a High-Value Customer Program**Create a loyalty tier with exclusive benefits, personalized communication, and retention incentives for high-value customers.
4. **Plan for Seasonal Peaks**Align inventory procurement and marketing campaigns with stronger performing seasons (Spring and Fall).
5. **Optimize Promotional Strategy**Shift from broad discounts to more targeted, segment-based promotions to protect margins while driving volume.
6. **Develop Gender-Specific Approaches**
   Maintain strong engagement with male customers while creating tailored product assortments and campaigns for female shoppers.

---

## 8. Conclusion

This project successfully demonstrates a complete data analytics workflow — from raw data to business recommendations. The combination of Python for data preparation and exploration, SQL for structured analysis, and Power BI for visualization provides a strong foundation for real-world data analyst work.

The insights and recommendations generated can help the business improve customer retention, optimize marketing spend, and increase overall revenue.

---

## 9. Future Improvements

- Incorporate time-series data for trend and forecasting analysis
- Perform RFM (Recency, Frequency, Monetary) segmentation
- Build a predictive model for customer churn or next purchase
- Deploy an interactive Streamlit version of the dashboard
- Integrate real-time data pipeline

---

**End of Report**
