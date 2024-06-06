-- 1. Encuentre la lista de todos los edificios que tienen empleados.
select distinct E.Nombre_Del_Edificio
from edificio as E
left join empleado as Emp
on E.Nombre_Del_Edificio = Emp.edificio
-- 2. Encuentra la lista de todos los edificios y su capacidad.
select distinct E.Nombre_Del_Edificio, E.capacidad
from edificio as E
left join empleado as Emp
on E.Nombre_Del_Edificio = Emp.edificio
-- 3. Enumere todos los edificios y las distintas funciones
--  de los empleados en cada edificio (incluidos los edificios vacíos)
select E.nombre_del_edificio, coalesce(Empl.role,'SIN EMPLEADOS')as funcion_Empleado
from edificio E
left join empleado as Empl on E.Nombre_Del_edificio = Empl.edificio