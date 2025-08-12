create database Trend_Analysis;
use Trend_Analysis;

CREATE TABLE orders (order_id INT,order_date DATE,amount DECIMAL(10,2),product_id INT);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2022-01-05', 150.00, 101),
(2, '2022-01-20', 200.00, 102),
(3, '2022-02-14', 320.50, 103),
(4, '2022-02-27', 450.00, 104),
(5, '2022-03-07', 500.00, 105),
(6, '2022-03-25', 120.00, 106),
(7, '2022-04-12', 600.00, 107),
(8, '2022-04-26', 240.00, 108),
(9, '2022-05-09', 350.00, 109),
(10, '2022-05-21', 275.00, 101),
(11, '2022-06-03', 400.00, 102),
(12, '2022-06-15', 310.00, 103),
(13, '2022-07-18', 480.00, 104),
(14, '2022-07-29', 150.00, 105),
(15, '2023-01-08', 120.50, 101),
(16, '2023-01-25', 250.00, 102),
(17, '2023-02-05', 300.75, 103),
(18, '2023-02-19', 150.00, 101),
(19, '2023-03-04', 500.00, 105),
(20, '2023-03-20', 200.00, 106),
(21, '2023-04-11', 600.00, 108),
(22, '2023-04-22', 120.00, 109),
(23, '2023-05-10', 300.00, 103),
(24, '2023-05-27', 450.00, 104),
(25, '2023-06-15', 350.00, 107),
(26, '2023-07-14', 600.00, 108),
(27, '2023-07-29', 250.00, 102),
(28, '2024-01-06', 200.00, 101),
(29, '2024-01-19', 320.00, 102),
(30, '2024-02-09', 280.00, 103),
(31, '2024-02-23', 500.00, 104),
(32, '2024-03-08', 450.00, 105),
(33, '2024-03-21', 350.00, 106),
(34, '2024-04-05', 600.00, 107),
(35, '2024-04-28', 200.00, 108),
(36, '2024-05-15', 330.00, 109),
(37, '2024-06-07', 420.00, 102),
(38, '2024-06-25', 500.00, 103),
(39, '2024-07-16', 275.00, 104),
(40, '2024-07-30', 350.00, 105);


select * from orders;

select *,year(order_date) as order_year, month(order_date) as order_month from orders;

select sum(amount) as total_revenue from orders;

select year(order_date) as order_year,sum(amount) as  yearly_revenue from orders group by order_year order by order_year asc;


select month(order_date) as order_month,sum(amount) as monthly_revenue
from orders group by order_month order by order_month asc;

select count(distinct product_id) as unique_product_id from orders;
select count(distinct order_id) as no_of_orders from orders;

select order_id,amount,product_id,year(order_date) as year_order from orders where year(order_date)=2023;

SELECT order_id,amount,product_id FROM orders WHERE YEAR(order_date) = 2023 ORDER BY amount DESC LIMIT 3;

select order_id,amount,product_id from orders where order_date between '2023-03-04' and '2024-07-30';