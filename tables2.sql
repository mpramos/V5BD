CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC,
    department_id INT
);
CREATE TABLE departments (
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(100)
);
CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	price NUMERIC,
	category_id INT,
	supplier_id INT
);
CREATE TABLE categories (
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(100)
);
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT,
	total_amount NUMERIC
);
CREATE TABLE order_items (
	order_item_id SERIAL PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT
);
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(100)
	
);

CREATE TABLE suppliers (
	supplier_id SERIAL PRIMARY KEY,
	supplier_name VARCHAR(100)
);
 CREATE TABLE projects (
 	project_id SERIAL PRIMARY KEY,
	 employee_id INT
 )













