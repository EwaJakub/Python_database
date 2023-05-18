sql = """
\c exercises_db
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    id serial,
    name varchar(255),
    description varchar(255),
    price decimal(5, 2)
);
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    id serial,
    description varchar(255)
);
DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients (
    id serial,
    name varchar(255),
    surname varchar(255)
);
"""