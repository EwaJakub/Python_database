sql = "sql code should be placed here"
sql = """DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id serial primary key,
    name varchar(255),
    description varchar(255),
    price decimal(5,2)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    id serial primary key,
    descriptions text
);

DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
    id serial primary key,
    name char(255),
    surname char(255)
);"""