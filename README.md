# Ola_Ride_Data_Analysis
Data-driven insights on Ola ride bookings using SQL and Power BI

## 📌 Project Overview

An end-to-end analytics project that combines SQL-based data exploration with a dynamic Power BI dashboard. The project analyzes Ola ride booking data to uncover operational insights, revenue trends, customer behavior, and service performance.

## 🎯 Objective

To clean, transform, and analyze Ola ride data using PostgreSQL, and visualize the insights using Power BI. This helps uncover trends in vehicle usage, cancellations, revenue streams, and customer satisfaction.

## 🛠 Tech Stack

- **PostgreSQL** – For running SQL scripts to clean, process, and analyze the raw ride data.
- **SQL** – Used for generating aggregated metrics, identifying trends, and deriving KPIs.
- **Power BI Desktop (.pbit)** – For building the final visual analytics dashboard.
- **Power Query** – Data ingestion and lightweight transformation inside Power BI.
- **Pandas and SQLAlchemy** – For loading and importing data from Jupyter Notebook to Postgre(Pgadmin4).
- 
## 🗃 Data Source

The dataset includes detailed records of Ola ride bookings, with fields like:
- Booking ID, Customer ID, Booking Status
- Pickup/Drop Locations and Timestamps
- Vehicle Type, Payment Method, Booking Value
- Ratings, Cancellation Reasons, Ride Distance


## 🧠 SQL Analysis Highlights

Key SQL queries from `project.sql` include:
- 🚫 **Cancellation Rate by Reason and Vehicle**
- ⭐ **Average Ratings by Vehicle Type**
- 💰 **Revenue Contribution by Vehicle Type**
- 📅 **Ride Volume by Hour/Day**
- 🔁 **Repeat Rides and Customer Behavior**
- 🛑 **Driver No-Show and Customer Cancellations**

These queries provided the foundation metrics used in the Power BI dashboard.

## 📊 Power BI Dashboard Features

### 1. **Overall Summary**
- KPIs: Total Rides, Revenue, Success Rate, Avg Ratings
- Trend Charts for Rides and Revenue Over Time

### 2. **Vehicle Type Analysis**
- Vehicle usage patterns
- Avg. ride distance, fare, and rating per vehicle type

### 3. **Revenue Deep Dive**
- Monthly revenue breakdown
- Top earning pickup-drop location pairs

### 4. **Cancellations Analysis**
- Most common cancellation reasons
- Who canceled (driver vs customer)
- Time and vehicle patterns in cancellation behavior

### 5. **Ratings Overview**
- Customer and driver rating trends
- Poor-rating hotspots by time and route

## 💡 Business Insights

- 🚗 Prime SUVs generated the highest revenue despite moderate ride count.
- ❌ Morning and late-night hours had the most cancellations, especially for Mini and Auto rides.
- ⭐ Customer ratings were generally higher for eBikes and Prime Plus.
- 🛑 Personal & Car-related issues were a major driver-side cancellation reason.
- 🧾 Cash remained the dominant payment method, especially in high-value rides.

## 📸 Dashboard Preview

*(Add screenshots or GIF demo of dashboard here once available)*

## 📥 How to Use

1. Clone or download this repository.
2. Load `project.sql` into a PostgreSQL environment and execute to prepare your dataset.
3. Open `ola dashboard.pbit` in Power BI Desktop.
4. Connect the Power BI file to your PostgreSQL DB or export the SQL output to Excel/CSV and load it into Power BI.
5. Explore the dashboard using filters, slicers, and visuals.

## Auther
### Akash Kumar Gupta
   
---
