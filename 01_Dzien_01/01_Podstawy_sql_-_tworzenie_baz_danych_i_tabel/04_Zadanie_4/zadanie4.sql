sql = "Tu powinien znaleźć się kod sql"
sql = """
DROP TABLE IF EXISTS Cinemas CASCADE;
CREATE TABLE cinemas (
    id serial primary key,
    name varchar(255),
    address varchar(255)
);

DROP TABLE IF EXISTS Movies CASCADE;
CREATE TABLE movies (
    id serial primary key,
    name varchar(255),
    descriptions varchar(255),
    rating integer
);

DROP TABLE IF EXISTS Tickets CASCADE;
CREATE TABLE tickets (
    id serial primary key,
    quantity integer,
    price float
);

DROP TABLE IF EXISTS Payments CASCADE;
CREATE TABLE payments (
    id serial primary key,
    type varchar(255),
    date date
);
"""
