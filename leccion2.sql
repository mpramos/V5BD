--**Ejercicio 3: Tareas**Toy Story 2

--1. Encuentra todas las películas de Toy Story
select *
from movie
where titulo like 'Toy Story%'
--2. Encuentra todas las películas dirigidas por John Lasseter
select *
from movie
where director ='Juan Lasseter'
--3. Encuentra todas las películas (y directores) no dirigidas por John Lasseter
select *
from movie
where director !='Juan Lasseter'
--4. Encuentra todas las películas de WALL-*
select *
from movie
where titulo like 'WALL-%'