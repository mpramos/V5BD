-- 1. Enumere todas las películas y sus ventas combinadas en **millones**
--     de dólares.

select M.Titulo, T.ventas_locales+T.ventas_internacionales as ventas_combinadas
from movie as M
join taquillas as T	on M.identificacion =T.id_pelicula

-- 2. Enumere todas las películas y sus calificaciones **en porcentaje.**
SELECT M.titulo AS Pelicula,T.clasificacion * 10 AS Calificacion_Porcentaje
FROM 
    Movie as M
JOIN 
    Taquillas as T
ON 
    M.Identificacion = T.id_pelicula;

-- 3. Enumere todas las películas que se estrenaron en años pares.
SELECT titulo, anio as Años_pares
FROM Movie 
WHERE anio % 2 = 0;