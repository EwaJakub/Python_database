sql = "sql code should be placed here"
sql = """
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    id serial primary key,
    name varchar(255),
    description varchar(255),
    price decimal(5,2)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    id serial primary key,
    description text
);

DROP TABLE IF EXISTS Clients;
CREATE TABLE Clients (
    id serial primary key,
    name char(255),
    surname char(255)
);"""