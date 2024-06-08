-- 1. Encuentre el tiempo más largo que un empleado ha estado en el estudio
select MAX(años_empleado) as Tiempo_Mas_Largo
from empleado

-- 2. Para cada puesto, encuentre el número promedio de años empleados 
--por los empleados en ese puesto.
select role,AVG(años_empleado::numeric) as promedio_años
from empleado
group by role

-- 3. Encuentre el número total de años de empleados trabajados en cada edificio.

select edificio, SUM(años_empleado::numeric) as años_trabajados
from empleado
group by edificio
