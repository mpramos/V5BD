--1. Encuentre el nombre y la función de todos los empleados que no
--han sido asignados a un edificio
select emp.nombre, emp.role
from empleado as emp
left join edificio as E on E.nombre_del_edificio = emp.edificio
where emp.edificio IS NULL
--Encuentre los nombres de los edificios que no tienen empleados

select E.nombre_del_edificio
from edificio as E
left join empleado as Emp on E.nombre_del_edificio = emp.edificio
where emp.edificio IS NULL
