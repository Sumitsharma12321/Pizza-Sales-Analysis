SELECT * FROM pizza_sales;

# Find Total Revenue 
select round(sum(total_price),2) as total_revenue from pizza_sales;

# Find the Average Order value
SELECT ROUND(SUM(total_price) / COUNT(DISTINCT Order_id),2) AS average_order_vaue 
FROM pizza_sales;

# FIND TOTAL PIZZA SOLD
SELECT SUM(quantity) AS total_pizza_sold
FROM pizza_sales;

#FIND TOTAL ORDERS
SELECT COUNT(DISTINCT order_id) AS total_order 
FROM pizza_sales;

# Find the average pizza per order
SELECT Round(SUM(quantity) / COUNT(DISTINCT order_id),2) as Average_pizza_per_order
FROM pizza_sales;

# Daily Trend for Order
SELECT order_day , total_orders
from(SELECT
		DAYNAME(order_date) as order_day , 
		DAYOFWEEK(order_date) as day_num,
		COUNT(DISTINCT order_id) AS total_orders
	from pizza_sales
	group by order_day , day_num
	order by day_num
)t;


# MONTHLY TRENDS FOR TOTAL ORDERS
select order_month , total_orders
from (SELECT 
      MONTHNAME(order_date) as order_month,
      MONTH(order_date) as month_name,
      COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by order_month ,month_name
order by month_name
)t;

# calculate percentage of total sales by category
SELECT pizza_category ,round(SUM(total_price),2) as total_sales,
 ROUND(sum(total_price) * 100 / (select sum(total_price) from pizza_sales),2) as PCT
FROM pizza_sales
GROUP BY pizza_category; 

#  calculate percentage of total sales by category for janurary month.
SELECT pizza_category ,round(SUM(total_price),2) as total_sales,
 ROUND(sum(total_price) * 100 / (select sum(total_price) from pizza_sales Where month(order_date) = 1 ),2) as PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category; 

# percentage of sales by pizza size
SELECT pizza_size ,round(SUM(total_price),2) as total_sales,
 ROUND(sum(total_price) * 100 / (select sum(total_price) from pizza_sales),2) as PCT
FROM pizza_sales
GROUP BY pizza_size; 

# Top 5 Pizza maximun Revenue generate
select pizza_name , sum(total_price) as total_revenue 
from pizza_sales
group by pizza_name
order by total_revenue DESC
limit 5;

# top 5 pizza based on Quantity
select pizza_name , sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity DESC
limit 5;

# top 5 pizza most orders
select pizza_name , count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders DESC
limit 5;

