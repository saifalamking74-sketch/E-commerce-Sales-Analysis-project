create database ecommerce;
use ecommerce;
select * from orders;



-- total orders-- 
select count(*) as total_orders from orders;

-- total sales
select sum(Net_Amount) as total_sales from orders;


-- top products
select product,sum(Net_Amount) as sales
from orders
group by product
order by sales desc;


-- top cities
select city,sum(Net_Amount) as sales
from orders
group by city
order by sales desc;


-- monthly sales
select month,sum(Net_Amount) as sales
from orders
group by month;


-- highest profit prooduct
select product,sum(profit) as profit
from orders
group by product
order by profit desc;


-- payment mode distribution
select payment_mode,count(*) as Total_Orders
from orders
group by payment_mode;


-- cancelled orders
select * from orders
where order_status= cancelled;












