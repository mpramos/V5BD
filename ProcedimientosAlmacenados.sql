create table empleadosP (
    id serial primary key,
    nombre VARCHAR(50),
    puesto VARCHAR(50),
    salario NUMERIC(10,2)
);

create or replace procedure insertar_empleado(
    nombre VARCHAR,
    puesto VARCHAR,
    salario NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO empleadosP(nombre,puesto,salario)
    values(nombre, puesto,salario);
END;
$$;
CALL insertar_empleado('Juan Pérez', 'Desarrollador', 7500)

select * from empleadosP


