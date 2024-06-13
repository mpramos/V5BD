--Ejercicio 12: Tareas

--1. Calcula el número de películas que ha dirigido cada director.
select director, count(*) as numeros_de_peliculas_dirigidas
from movie
group by director
--2. Encuentre el total de ventas nacionales e internacionales que se pueden atribuir a cada director.
SELECT director , SUM(T.ventas_Locales)AS TOTAL_Vent_Nac,SUM(T.ventas_internacionales)AS TOTAL_Vent_Inter
FROM Movie as M
JOIN Taquillas as T ON T.id_pelicula=M.identificacion
GROUP BY M.director