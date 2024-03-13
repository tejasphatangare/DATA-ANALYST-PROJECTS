select * from pizza_sales;

select CAST(sum(total_price) As Decimal(10,2)) As Total_Revenue from pizza_sales;

select CAST(sum(total_price)/ count(Distinct order_id ) AS Decimal(10,2)) AS Avg_Order_Value from pizza_sales;

select sum(quantity) As Total_Sale from pizza_sales;

select count(Distinct order_id) AS Tota_Orders from pizza_sales;

select cast(cast(sum(quantity) As Decimal(10,2))/cast(count(Distinct order_id) As Decimal(10,2)) As Decimal(10,1)) As Avg_Pizza_Order from pizza_sales;

select DATENAME(DW,order_date) As Order_Day ,count(Distinct order_id) As Total_order from pizza_sales
group by DATENAME(DW,order_date);

select DATENAME (Month,order_date) As Order_Month,count(Distinct order_id) As Total_order from pizza_sales
group by DATENAME (Month,order_date)
order by Order_Month;

SELECT pizza_category,CAST(SUM(total_price) As Decimal(10,2)) AS total_Sales,CAST(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales)AS Decimal(10,2))* 100  As Total_Per_Sales
FROM pizza_sales
GROUP BY pizza_category;

SELECT pizza_size, CAST(SUM (total_price) AS Decimal(10,1)) AS Total_Sales,CAST(SUM(total_price) * 100 / (SELECT SUM(total_price)from pizza_sales) AS Decimal(10,1)) AS PCT 
from pizza_sales
group by pizza_size
order by PCT;

SELECT Top 5 pizza_name,CAST(SUM(total_price) As Decimal(10,2)) As Total_Revenue,CAST(SUM(quantity) As Decimal(10,2)) As Total_Quantity,CAST(SUM(Distinct order_id )As Decimal(10,2)) As Total_Orders from pizza_sales
group By pizza_name
order by Total_Revenue DESC;

SELECT Top 5 pizza_name,CAST(SUM(total_price) As Decimal(10,2)) As Total_Revenue,CAST(SUM(quantity) As Decimal(10,2)) As Total_Quantity,CAST(SUM(Distinct order_id )As Decimal(10,2)) As Total_Orders from pizza_sales
group By pizza_name
order by Total_Revenue ASC;

SELECT Top 5 pizza_name,SUM(quantity) As Top_Five_Sellers from pizza_sales
group By pizza_name
order by Top_Five_Sellers Desc;

SELECT Top 5 pizza_name,SUM(quantity) As Bottom_Five_Sellers from pizza_sales
group By pizza_name
order by Bottom_Five_Sellers ASC;

SELECT Top 5 pizza_name,Count(Distinct order_id) As Top_Five_Sellers_By_Order from pizza_sales
group By pizza_name
order by Top_Five_Sellers_By_Order DESC;


SELECT Top 5 pizza_name,Count(Distinct order_id) As Top_Five_Wrost_Sellers_By_Order from pizza_sales
group By pizza_name
order by Top_Five_Wrost_Sellers_By_Order ASC;

