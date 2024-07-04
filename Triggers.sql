create table products(
    product_id serial primary key,
    name VARCHAR(100),
    price NUMERIC
);
create table products_audit(
    audit_id serial primary key,
    product_id INT,
    name VARCHAR(100),
    price NUMERIC,
    action_time TIMESTAMP default CURRENT_TIMESTAMP
);

create or replace function log_product_insert() returns trigger as $$
BEGIN
    INSERT INTO products_audit(product_id,name, price)
    values(new.product_id, new.name, new.price);
    return new;
END;
$$ LANGUAGE plpgsql;    



create trigger product_insert_trigger
after insert on products
for each row
execute function log_product_insert();



insert into products(name,price) values ('Product A', 10.0);
insert into products(name,price) values ('Product B', 20.0);

select * from products
select * from products_audit


create table inventory(
    inventory_id serial primary key,
    product_id int,
    quantity int
);
create or replace function update_inventory_on_price_change() returns trigger as $$
BEGIN
    UPDATE inventory
    SET quantity=quantity-1
    where product_id=new.product_id;
    return new;
END;
$$ LANGUAGE plpgsql;

create trigger price_update_trigger
after update of price on products
for each row
when (old.price is distinct from new.price) 
execute function update_inventory_on_price_change()

insert into inventory(product_id,quantity) values (1, 100);
insert into inventory(product_id,quantity) values (2, 200);

update products set price=15.0 where product_id=1  


create table product_update_audit (
    audit_id serial primary key,
    product_id int,
    old_name VARCHAR(100),
    old_price NUMERIC,
    new_name VARCHAR(100),
    new_price NUMERIC,
    action_time TIMESTAMP default CURRENT_TIMESTAMP
);

create OR replace function log_product_update()  returns trigger as $$
BEGIN
 insert into product_update_audit(product_id, old_name, old_price, new_name, new_price)
 values (old.product_id, old.name, old.price, new.name, new.price);
 return new;
END;
$$LANGUAGE plpgsql;

create trigger product_update_trigger
after update on products
for each row
execute function log_product_update();

update products set name='Update Product A', price=12.0 where product_id=1


select * from product_update_audit

create table product_delete_audit (
    audit_id serial primary key,
    product_id int,
    name VARCHAR(100),
    price NUMERIC,
    action_time TIMESTAMP default CURRENT_TIMESTAMP
);

create or replace function log_product_delete() returns trigger as $$
BEGIN
    insert into product_delete_audit(product_id,name, price)
    values(old.product_id, old.name, old.price);
    return old;
END;
$$ LANGUAGE plpgsql;

create trigger product_delete_trigger
after delete on products
for each row
execute function log_product_delete()



delete from products where product_id=1;


select * from products

select * from product_delete_audit;


















