-- Insertar registros en employees
INSERT INTO employees (name, salary, department_id) VALUES
('John Doe', 50000, 1),
('Jane Smith', 60000, 2),
('Alice Johnson', 55000, 1),
('Bob Brown', 70000, 3),
('Charlie Black', 45000, 2),
('Dave White', 80000, 3),
('Eva Green', 75000, 1),
('Frank Blue', 65000, 2),
('Grace Pink', 50000, 1),
('Hank Grey', 72000, 3);
select * from employees
-- Insertar registros en departments
INSERT INTO departments (department_name) VALUES
('HR'),
('Finance'),
('Engineering');
select * from departments
-- Insertar registros en products
INSERT INTO products (product_name, price, category_id, supplier_id) VALUES
('Product A', 100, 1, 1),
('Product B', 200, 2, 2),
('Product C', 150, 1, 1),
('Product D', 250, 2, 2),
('Product E', 300, 3, 3),
('Product F', 120, 3, 3);
select * from products
-- Insertar registros en categories
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Furniture'),
('Clothing');
select * from categories
-- Insertar registros en orders
INSERT INTO orders (customer_id, total_amount) VALUES
(1, 1000),
(2, 2000),
(3, 1500),
(4, 2500);
select * from orders
-- Insertar registros en order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(2, 4, 2),
(3, 5, 1),
(4, 6, 4);
select * from order_items
-- Insertar registros en customers
INSERT INTO customers (customer_name) VALUES
('Customer A'),
('Customer B'),
('Customer C'),
('Customer D');
select * from customers
-- Insertar registros en suppliers
INSERT INTO suppliers (supplier_name) VALUES
('Supplier 1'),
('Supplier 2'),
('Supplier 3');
select * from suppliers
-- Insertar registros en projects
INSERT INTO projects (employee_id) VALUES
(1),
(2),
(3),
(1),
(2),
(4),
(5),
(6),
(1),
(2),
(3),
(1),
(4),
(5),
(6);
select * from projects