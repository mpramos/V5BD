--! EJERCICIOS 

--? Ejercicio 5: Tareas

-- 1. Encuentra las ventas nacionales e internacionales de cada película.
select M.titulo,T.ventas_locales,T.ventas_internacionales
from movie as M
join Taquillas as T on M.identificacion=T.id_pelicula
-- 2. Muestre las cifras de ventas de cada película que obtuvo mejores resultados a nivel internacional que a nivel nacional.
select M.titulo , T.ventas_internacionales, T.ventas_locales
from movie as M
join Taquillas as T on M.identificacion=T.id_pelicula
where T.ventas_internacionales > T.ventas_locales
-- 3. Enumere todas las películas por clasificación en orden descendente.
select M.titulo, T.clasificacion
from movie as M
join taquillas T on M.identificacion= T.id_pelicula
order by T.clasificacion DESC
