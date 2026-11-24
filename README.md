# 📊 Omni-Channel Marketing Analytics & Customer Journey Funnel

[![Power BI](https://img.shields.io/badge/Power_BI-Desktop_%26_Service-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![SQL Server](https://img.shields.io/badge/Microsoft_SQL_Server-T--SQL-CC292B?logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/sql-server)
[![Live Dashboard](https://img.shields.io/badge/Live_Dashboard-Power_BI_Service-brightgreen?logo=powerbi&logoColor=white)](https://app.powerbi.com/view?r=eyJrIjoiMDc2NDQ3M2YtOGI3NC00YTE3LTkzZDYtYjdmYjAxYzljMmFmIiwidCI6ImVhZjYyNGM4LWEwYzQtNDE5NS04N2QyLTQ0M2U1ZDc1MTZjZCIsImMiOjh9)

---

## Project Overview
An end-to-end Marketing Analytics and Business Intelligence project evaluating omni-channel acquisition efficiency, e-commerce conversion funnel velocity, and customer sentiment. It delivers an executive Power BI decision suite powered by a robust SQL Server Star Schema.

---

## Business Problem
An e-commerce retail business needs better visibility into its marketing ROI, checkout funnel efficiency, and customer review audits. Management lacks a clear understanding of the root causes behind ad spend inefficiencies, checkout drop-offs, and negative customer feedback. This creates a need for a structured analysis to support better business decisions.

---

## Solution
Cleaned and transformed raw clickstream and campaign logs in Microsoft SQL Server (T-SQL) into a structured Star Schema data model. Built a 3-page interactive Power BI dashboard with core business metrics covering marketing campaign performance, the on-site customer journey, and customer feedback.

---

## Dashboard Preview

### 1. Campaign Engagement & Media Performance
![Campaign Engagement & Media Performance](images/01_campaign_engagement_dashboard.png)
* **What it shows:** Multi-channel marketing reach, click-through rates, seasonal engagement trajectories, and content format efficiency across product categories.
* **Business Value:** Enables marketing leadership to identify which creative channels effectively drive traffic and reallocate ad spend away from underperforming media.

---

### 2. Customer Journey & Conversion Funnel
![Customer Journey & Conversion Funnel](images/02_customer_journey_funnel_dashboard.png)
* **What it shows:** Full-funnel progression from homepage entry to product exploration and final checkout, alongside average stage duration and conversion breakdown by price tier and region.
* **Business Value:** Pinpoints exact stages where potential buyers abandon their carts, highlighting checkout UX friction points to prioritize conversion rate optimization.

---

### 3. Customer Feedback & Product Sentiment
![Customer Feedback & Product Sentiment](images/03_customer_sentiment_dashboard.png)
* **What it shows:** Overall sentiment distribution (positive, neutral, negative), star rating breakdowns, product sentiment matrix, and satisfaction trends by category and region.
* **Business Value:** Connects post-purchase customer satisfaction directly to product categories and regional logistics, surfacing recurring quality and delivery pain points.

---

### 4. Star Schema Data Architecture
![Star Schema Data Architecture](images/04_data_model_star_schema.png)
* **What it shows:** An optimized relational dimensional model with 1-to-many relationships connecting central dimensions (Customers, Products, Calendar) to engagement, journey, and review fact tables.
* **Business Value:** Provides a scalable foundation for cross-functional reporting that ensures consistent business definitions and sub-second dashboard query responsiveness.

---

## Key Insights

* **Channel Engagement Divergence:**
  * **Finding:** Video and Social drive top-of-funnel reach, while Blog content drives qualified conversion intent.
  * **Evidence:** Video and Social captured 80%+ of clicks, but Blog delivered the highest CTR at **8.8%** vs. **6.46%** overall.
  * **Business Meaning:** High-cost awareness ads need to be paired with educational content to capture high-intent buyers.

* **Checkout Friction & Cart Hesitation:**
  * **Finding:** The steepest customer drop-off occurs at checkout rather than product exploration.
  * **Evidence:** Out of 2.20K visitors, 1.23K viewed products but only 260 bought (**11.82% conversion**), spending an excessive **222.5s** on checkout.
  * **Business Meaning:** Payment form friction and unexpected costs cause high abandonment at the final step.

* **Premium Product Conversion Strength:**
  * **Finding:** High-ticket products convert significantly better than low-cost impulse items.
  * **Evidence:** High-tier products converted at **37.55%**, compared to **25.56%** for medium and **21.61%** for low tiers.
  * **Business Meaning:** High-value shoppers have stronger buying intent; marketing should emphasize trust over discounting.

* **Footwear Sizing & Regional Shipping Bottlenecks:**
  * **Finding:** Brand satisfaction is dragged down by Footwear fit issues and Southern European delivery delays.
  * **Evidence:** Overall rating is **3.98 / 5.0**, but **Footwear (3.3)** and **Southern Europe (3.1)** drive **14.8% negative reviews (267 reviews)**.
  * **Business Meaning:** Sizing confusion and shipping delays directly hurt customer lifetime value and inflate returns.

---

## Business Recommendations

* **Friction in Checkout Duration (222.5s):**
  * **Finding:** Lengthy 222.5-second checkout times drive heavy cart abandonment.
  * **Suggested Action:** Implement one-click express checkout (Apple Pay / Google Pay) and upfront shipping costs.
  * **Expected Benefit:** Reduces checkout friction to recover 15–20% of abandoned carts and accelerate conversions.

* **Misaligned Ad Budget Allocation:**
  * **Finding:** Ad spend over-indexes on awareness while high-converting blog and seasonal peaks are underfunded.
  * **Suggested Action:** Shift 20–25% of static ad budget to Video/Social in July & Q4, supported by SEO buyer guides.
  * **Expected Benefit:** Maximizes seasonal ROAS without increasing total marketing expenditure.

* **High Negative Sentiment in Footwear & Southern Europe:**
  * **Finding:** Footwear sizing issues and Southern European shipping delays account for 14.8% negative reviews.
  * **Suggested Action:** Upgrade footwear sizing charts with interactive fit tools and enforce stricter regional carrier SLAs.
  * **Expected Benefit:** Drops negative reviews below 10%, cuts return logistics costs, and protects repeat purchase retention.

---

## Interactive Dashboard

Experience the live, interactive Power BI report with full cross-filtering, slicer interaction governance, and drill-through capabilities directly in your browser:

[![Launch Power BI Dashboard](https://img.shields.io/badge/Power_BI_Service-Launch_Interactive_Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://app.powerbi.com/view?r=eyJrIjoiMDc2NDQ3M2YtOGI3NC00YTE3LTkzZDYtYjdmYjAxYzljMmFmIiwidCI6ImVhZjYyNGM4LWEwYzQtNDE5NS04N2QyLTQ0M2U1ZDc1MTZjZCIsImMiOjh9)

👉 **[Click Here to Open the Live Dashboard](https://app.powerbi.com/view?r=eyJrIjoiMDc2NDQ3M2YtOGI3NC00YTE3LTkzZDYtYjdmYjAxYzljMmFmIiwidCI6ImVhZjYyNGM4LWEwYzQtNDE5NS04N2QyLTQ0M2U1ZDc1MTZjZCIsImMiOjh9)**
