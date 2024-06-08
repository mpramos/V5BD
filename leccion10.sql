-- 1. Encuentra la cantidad de artistas en el estudio (sin cláusula **HAVING**)
select * from empleado

select count(*) as cantidad
from empleado
where role ='Artista'

-- 2. Encuentre la cantidad de empleados de cada rol en el estudio.
select role,count(*) as cantidad_de_empleados_por_rol
from empleado
group by role
-- 3. Encuentre el número total de años empleados por todos los ingenieros.

select SUM(años_empleado::numeric) as total_de_años_empleados
from empleado
where role='Ingeniero'