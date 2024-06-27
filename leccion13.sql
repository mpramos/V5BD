--1 Seleccionar empleados con salarios superiores al promedio
select name from employees where salary>(select AVG(salary) from employees) 
--2 Encontrar despaartamentos con salarios promedio superiores al promedio de la compañia

select department_name from departments where department_id IN
(select department_id from employees group by department_id having AVG(salary)>(
select avg(salary) FROM employees))

--3.- Listar productos cuyo precio es superior al precio promedio de todos los productos

select product_name from products where price > (select avg(price) from products)

-- 4 Obtener nombres de empleados que trabajan en departamentos con más de 10 empleados
select name  from employees where department_id IN
(select department_id from employees group by department_id having count(*) >10)


--5 Seleccionar productos cuyo precio es mayor que el precio promedio de su categoria
select product_name from products p where price>(select avg(price) from products where category_id=products.category_id)
--6 Obetner departamentos con más de 2 empleados que tienen un salario superior al 
--salrio promedio de su departamento
select * from departments
select department_name from departments where department_id IN
(select department_id from employees group by department_id having count(*) >2 and AVG(salary)>(select avg(salary) from employees))
--7 Listar clientes que no han realizado ninguna compra
select customer_name from customers where customer_id not in (select customer_id from orders)
-- 8 Encontrar empleados que ganan más que el salario promedio de su departamento
select name from employees e where salary > (select avg(salary) from employees where department_id=e.department_id) 

--9 Seleccionar productos que tienen más ventas que el promedio de todas las ventas
select 






















