create table customers (
	customer_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100),
	city VARCHAR(50)
);

create table products(
	product_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	price NUMERIC(10,2)
);

create table orders(
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(customer_id),
	order_date DATE
);
create table orders_items(
	order_item_id SERIAL PRIMARY KEY,
	order_id INT REFERENCES orders(order_id),
	product_id INT REFERENCES products(product_id),
	quantity INT,
	price NUMERIC(10,2)
)

