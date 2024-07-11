create table if not exists empleados (
    id serial primary key,
    nombre VARCHAR(50),
    puesto VARCHAR(50),
    salario NUMERIC(10,2),
    departamento VARCHAR(50)
);
INSERT INTO empleados( nombre,puesto,salario, departamento) values
('Juan Perez','Desarrollador', 75000.00,'Desarrollo'),
('Ana Perez','Desarrollador', 85000.00,'Administracion'),
('Pedro  Perez','Desarrollador', 95000.00,'Desarrollo');

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
CALL insertar_empleado('Carlos López', 'Gerente', 7500)
CALL insertar_empleado('Laura Sánches', 'Diseñadora', 7500)

select * from empleadosP


create or replace procedure aumentar_salario_departamento(
    departamento VARCHAR,
    porcentaje NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN   
    UPDATE empleadosP
    SET salario = salario +(salario*(porcentaje/100))
    where departamento=departamento;
END;
$$    

CALL aumentar_salario_departamento('Desarrollo',10); 