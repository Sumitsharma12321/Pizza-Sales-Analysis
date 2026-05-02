
# 🍕 Pizza Sales Analysis

A comprehensive end-to-end data analysis project exploring pizza sales performance, customer preferences, and business insights using **SQL** and **Power BI**.

---

## 📌 Project Overview

This project analyzes a pizza restaurant's sales data to uncover actionable business insights. By leveraging SQL for data extraction and transformation, and Power BI for interactive dashboard creation, the project answers key business questions around revenue, customer trends, and product performance.

---

## 🎯 Objectives

- Calculate key performance indicators (KPIs) such as total revenue, average order value, and total pizzas sold
- Identify daily and monthly sales trends
- Analyze pizza category and size preferences
- Discover best-selling and worst-selling pizzas by revenue, quantity, and total orders
- Support data-driven decision-making for menu optimization and marketing strategies

---

## 📊 Key Metrics (KPIs)

| Metric | Description |
|--------|-------------|
| **Total Revenue** | Sum of total price across all pizza orders |
| **Average Order Value** | Total revenue divided by total number of orders |
| **Total Pizzas Sold** | Sum of quantities across all orders |
| **Total Orders** | Total number of unique orders placed |
| **Average Pizzas Per Order** | Total pizzas sold divided by total orders |

---

## 📁 Dataset

The dataset contains detailed information about each pizza order including:

- `order_id` – Unique identifier for each order
- `order_details_id` – Unique identifier for each pizza within an order
- `pizza_id` – Unique key linking the pizza to its details
- `quantity` – Number of pizzas ordered
- `order_date` – Date the order was placed
- `order_time` – Time the order was placed
- `unit_price` – Price per pizza
- `total_price` – Total price for that line item
- `pizza_size` – Size of the pizza (S, M, L, XL, XXL)
- `pizza_category` – Category (Classic, Supreme, Chicken, Veggie)
- `pizza_name` – Name of the pizza
- `pizza_ingredients` – Ingredients used

---

## 🗂️ Project Structure

```
Pizza-Sales-Analysis/
│
├── data/
│   └── pizza_sales.csv          # Raw dataset
│
├── sql/
│   └── pizza_sales_queries.sql  # All SQL queries used for analysis
│
├── dashboard/
│   └── pizza_sales_report.pbix  # Power BI dashboard file
│
├── images/
│   └── dashboard_preview.png    # Dashboard screenshots
│
└── README.md
```

---

## 🔍 SQL Analysis

SQL was used to query and manipulate the pizza sales data. Key analyses performed:

**Trend Analysis**
- Daily trend of total orders across days of the week
- Monthly trend to identify seasonal patterns

**Category & Size Analysis**
- Percentage of sales by pizza category
- Percentage of sales by pizza size
- Total pizzas sold by category

**Top & Bottom Performers**
- Top 5 best-selling pizzas by revenue, quantity, and orders
- Bottom 5 worst-selling pizzas by revenue, quantity, and orders

### Sample Query

```sql
-- Total Revenue
SELECT ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizza_sales;

-- Top 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Daily Trend
SELECT DAYNAME(order_date) AS Order_Day,
       COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DAYNAME(order_date);
```

---

## 📈 Power BI Dashboard

The Power BI dashboard contains two pages:

**Home Page**
- KPI cards (Total Revenue, Avg Order Value, Total Pizzas Sold, Total Orders, Avg Pizzas/Order)
- Daily trend bar chart
- Monthly trend line chart
- Sales % by pizza category (donut chart)
- Sales % by pizza size (donut chart)
- Total pizzas sold by category (funnel chart)

**Best/Worst Sellers Page**
- Top 5 pizzas by revenue, quantity, and orders
- Bottom 5 pizzas by revenue, quantity, and orders

---

## 💡 Key Insights

- 📅 **Peak Days:** Orders are highest on **Fridays and Saturdays** (weekends)
- 📆 **Peak Months:** **July and January** see the most orders
- 🍕 **Top Category:** **Classic pizzas** contribute the most to sales and revenue
- 📏 **Popular Size:** **Large (L)** is the most preferred pizza size
- 🏆 **Best Seller:** The **Classic Deluxe Pizza** leads in quantity and orders
- 💰 **Top Revenue Pizza:** The **Thai Chicken Pizza** generates the highest revenue
- 📉 **Worst Seller:** The **Brie Carre Pizza** has the lowest revenue, quantity, and orders

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **MySQL / SQL Server** | Data storage, querying, and analysis |
| **Power BI Desktop** | Interactive dashboard and visualization |
| **Microsoft Excel** | Initial data exploration and cleaning |

---

## 🚀 Getting Started

### Prerequisites
- MySQL Workbench or SQL Server Management Studio
- Power BI Desktop (free download from Microsoft)

### Steps

1. **Clone this repository**
   ```bash
   git clone https://github.com/Sumitsharma12321/Pizza-Sales-Analysis.git
   cd Pizza-Sales-Analysis
   ```

2. **Import the dataset**
   - Open your SQL client and create a new database
   - Import `pizza_sales.csv` using the Table Import Wizard

3. **Run SQL queries**
   - Open `sql/pizza_sales_queries.sql`
   - Execute the queries to generate analysis results

4. **Open the dashboard**
   - Launch Power BI Desktop
   - Open `dashboard/pizza_sales_report.pbix`
   - Refresh data source if needed

---

## 📸 Dashboard Preview


<img width="879" height="481" alt="image" src="https://github.com/user-attachments/assets/f9911735-53cf-4de5-8535-cac23576727c" />

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -m 'Add some improvement'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

---

## 👤 Author

**Sumit Sharma**

- GitHub: [@Sumitsharma12321](https://github.com/Sumitsharma12321)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

> ⭐ If you found this project helpful, please give it a star!
