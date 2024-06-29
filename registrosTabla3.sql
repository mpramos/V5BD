-- Insertar datos en la tabla de clientes
INSERT INTO customers (name, email, city) VALUES
('Alice Smith', 'alice@example.com', 'New York'),
('Bob Johnson', 'bob@example.com', 'Los Angeles'),
('Charlie Davis', 'charlie@example.com', 'Chicago');

-- Insertar datos en la tabla de productos
INSERT INTO products (name, price) VALUES
('Laptop', 1000.00),
('Smartphone', 500.00),
('Tablet', 300.00);

-- Insertar datos en la tabla de órdenes
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-01-15'),
(2, '2023-02-20'),
(3, '2023-03-10');

-- Insertar datos en la tabla de ítems de órdenes
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1000.00),
(2, 2, 2, 1000.00),
(3, 3, 1, 300.00);
