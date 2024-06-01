-- Ejercicio 1: Tareas

-- 1. Encuentra el **`title`**de cada película.
select director 
from movie
-- 2. Encuentra el **`director`**de cada película.
select titulo
from movie
-- 3. Encuentra el **`title director`** y de cada película.
select titulo ||' '||director as titleAndDirector
from movie
-- 4. Encuentra el **`titleyear`** y de cada película.
select titulo || ' ' || anio as titlrAndYear
from movie
-- 5. Encuentra **`all`** la información de cada película.select * from movie
select * 
from movie





