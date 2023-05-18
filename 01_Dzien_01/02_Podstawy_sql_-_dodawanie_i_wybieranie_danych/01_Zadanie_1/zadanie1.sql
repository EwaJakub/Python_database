add_products_sql = "Zapytanie wpisz tutaj!"
add_orders_sql = "Zapytanie wpisz tutaj!"
add_clients_sql = "Zapytanie wpisz tutaj!"

DROP TABLE IF EXISTS products;
CREATE TABLE products(
id serial PRIMARY KEY,
name varchar(255),
description text,
price decimal(5, 2)
);

SELECT * FROM products;
add_products_sql = "INSERT INTO products (name, description, price)
VALUES ('drill', 'The best drill every', 99.99),
       ('knife', 'You can''t find sharper than this', 80.99)
;"

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
id serial PRIMARY KEY,
description text
);

SELECT * FROM orders;
add_orders_sql = "INSERT INTO orders (description)
VALUES ('It''s for my birthday'),
       ('I need it now'),
       ('Seems like a good stuff'),
       ('Gimme more of that')
;"

DROP TABLE IF EXISTS clients;
CREATE TABLE clients(
id SERIAL PRIMARY KEY,
name varchar(255),
surname varchar(255)
);

SELECT * FROM clients;
add_clients_sql = "INSERT INTO clients (name, surname)
VALUES ('Stephen', 'Skipper'),
       ('Donald', 'Honeycutt'),
       ('Vickie', 'Gilbert'),
       ('John', 'Lovely')
;"