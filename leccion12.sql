--1. Agrega la nueva producción del estudio, **Toy Story 4** a la lista de películas (puedes usar cualquier director)
insert into movie(identificacion,titulo,director,anio,duracion_minutos)
values(15, 'Toy Story 4','Director x',2022,80)

select *from movie
select * from taquillas

--2. ¡Toy Story 4 ha sido lanzado con gran éxito de crítica! Tenía una calificación de
--**8,734 y millones a nivel nacional270 millones a nivel internacional** y ganó y Agregue el registro a la tabla.

insert into taquillas(id_pelicula,clasificacion,ventas_locales,ventas_internacionales)
values(
		(select identificacion from movie where titulo='Toy Story 4'),
	     8.734,
		270000000,
			0
)