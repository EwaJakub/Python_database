sql = "Tu powinien znaleźć się kod sql"
sql = """
CREATE TABLE cinemas (
    id serial primary key,
    name varchar(255),
    address varchar(255)
);

CREATE TABLE movies (
    id serial primary key,
    name varchar(255),
    descriptions varchar(255),
    rating integer
);

CREATE TABLE tickets (
    id serial primary key,
    quantity integer,
    price float
);

CREATE TABLE payments (
    id serial primary key,
    type varchar(255),
    date date
);
"""
