-- exercises solutions:
--1:
-- select product_id,product_name,category_id from products

--2:
-- select * from customers 
-- where country = 'Germany'

--3:
-- select * from orders
-- where customer_id = 'ALFKI'

--4:
-- select sum(order_details.unit_price * order_details.quantity * 
-- 		   (1-order_details.discount)) as TotalOrders ,
-- 		   customers.customer_id, customers.contact_name
-- from customers 
-- inner join orders on orders.customer_id = customers.customer_id 
-- inner join order_details on order_details.order_id = orders.order_id
-- group by customers.customer_id

--5:
-- select *
-- from products 
-- order by products.unit_price desc
-- fetch first 5 rows only

--6:
-- select * from employees as e
-- where extract('year' from e.birth_date) < 1960

-- 7:
-- select *
-- from products
-- where products.units_in_stock = 0

--8:
-- select avg(unit_price)
-- from products

--9:
-- select sum(od.unit_price * od.quantity * (1 - od.discount))
-- from order_details as od
-- where od.product_id = 11

--10:
-- select count(cat.category_id)
-- from categories as cat

--11:
-- select * from products as pr
-- where pr.discontinued = 1 

--12:
-- select count(o.order_id)
-- from orders as o
-- where extract('year' from o.order_date) >= 1997

--13:
-- select *
-- from customers as cu
-- where LOWER(cu.contact_title) like ('%ceo%') or 
-- 	  LOWER(cu.contact_title) like ('%owner%') 

--14:
-- select *
-- from products 
-- order by products.unit_price desc
-- fetch first 1 rows only

--15:
-- select avg(AGE(NOW(),e.birth_date))
-- from employees as e

--16:
-- select * 
-- from customers as cu
-- where cu.phone LIKE '%123%'

--17:
-- select *
-- from products as pr
-- where pr.units_in_stock < 10 and pr.units_in_stock > 0

-- 18:
-- SELECT max(unit_price) as HighestPrice, 
-- 	   min(unit_price) as LowestPrice
-- FROM products





--19:
-- select * 
-- from orders
-- where extract('year' from orders.order_date ) = 1997
--       and extract('month' from orders.order_date ) = 5
-- 	  and extract('day' from orders.order_date ) = 5

--20:
-- select quantity_per_unit, product_name
-- from products


--21:
-- WITH avg_price AS (
--     SELECT AVG(unit_price) AS average_price
--     FROM products
-- )
-- SELECT *
-- FROM products AS pr
-- CROSS JOIN avg_price
-- WHERE pr.unit_price > avg_price.average_price;

--22:
-- select count(*), e.city
-- from employees as e
-- group by e.city 





