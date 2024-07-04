create or replace function empleados_por_departamento(depto VARCHAR)
 RETURNS TABLE(id INT,nombre VARCHAR, puesto VARCHAR, salario NUMERIC,departamento VARCHAR) AS $$
 BEGIN
    RETURN QUERY
    select e.id, e.nombre, e.puesto, e.salario, e.departamento
    from empleados e
    where e.departamento=depto;
END;
$$ LANGUAGE plpgsql;
select * from empleados_por_departamento('Desarrollo');