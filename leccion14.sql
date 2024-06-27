CREATE TABLE numeros (
	id SERIAL PRIMARY KEY,
	numero1 INTEGER,
	numero2 INTEGER
)
INSERT INTO numeros (numero1, numero2) values (5,3),(10,2),(7,8)


create function sumar(a INTEGER,b INTEGER) RETURNS INTEGER AS $$
BEGIN 
	RETURN a+b;
END;
$$ LANGUAGE plpgsql


select sumar(5,3)
select * from products

select sum(price) from products
select avg(price) from products
select count(*) from products

select * from employees

select name, salary,
	ROW_NUMBER() OVER (ORDER BY salary DESC)AS posicion
from employees
CREATE FUNCTION nombre_funcion(parametros) RETURNS tipo_return as $$
BEGIN 
	--codig de la funcion
	return valor;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION concatenar_cadenas1(a TEXT,b TEXT) returns text as $$
BEGIN 
	RETURN a || ' 🔑 ' || b;
END;
$$ LANGUAGE plpgsql;



select concatenar_cadenas('hola','que tal');
select concatenar_cadenas1('buenos dias','que tal estuvo tu dia')








	
	






