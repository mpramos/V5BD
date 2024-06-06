--Ejercicio 4: Tareas

--1. Enumere todos los directores de las películas de Pixar (alfabéticamente), sin duplicados
select * from movie
select distinct director
from movie 
order by director asc
--2. Enumere las últimas cuatro películas de Pixar estrenadas (ordenadas de más reciente a menos) 

select *
from movie
order by anio desc
limit 4
-- Enumere las próximas cinco películas de Pixar ordenadas alfabéticamente.
select * 
from movie
order by titulo limit 5