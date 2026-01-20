INSERT INTO customers (name, country) VALUES
('Alice', 'Germany'),
('Bob', 'Turkey'),
('Charlie', 'Italy');

INSERT INTO products (product_name, price) VALUES
('Laptop', 1200),
('Mouse', 25),
('Keyboard', 45);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-01-10'),
(2, '2024-01-11'),
(1, '2024-01-12');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 2, 3);
