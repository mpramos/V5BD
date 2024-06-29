--seleccionar cliente y su numero de ordenes
select c.name,
	(select count(*) from orders o WHERE o.customer_id=c.customer_id) as order_count
from customers c

select * from customers
select * from orders_items
select * from orders
select * from products
--mostrar el nombre del cliente y el total gastado por cada cliente
select 
	c.name,
	COALESCE(t.total_spent,0) as total_spent
from customers c	
LEFT JOIN(
select o.customer_id,
	SUM(oi.price * oi.quantity) as total_spent
from orders O
join orders_items oi ON o.order_id=oi.order_id
group by o.customer_id)t ON c.customer_id=t.customer_id
--Mostrar productos que se hayan vendido en cantidades mayores a 1

select name from products
where product_id IN(
	SELECT product_id from orders_items
	where quantity>1
)
--Subconsultas con Exits
	-- Mostar clientes que han realizado al menos una orden
	SELECT name FROM customers
	where exists(
	select 1 from orders
	where orders.customer_id = customers.customer_id)
	
	--Mostrar productos que han sido ordeandos
	select name from products
	where product_id IN(
	select product_id from orders_items)
--Incrementar el precio de los productos que han sido vendido màs de una vez
UPDATE products
SET price = price *2
WHERE product_id IN(
	select product_id FROM orders_items
	GROUP BY product_id
	HAVING COUNT(*)>1)
	select * from products

)




	

	
	
	
	
	
	
	
	
	
	






