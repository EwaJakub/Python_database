sql = "Tu powinien znaleźć się kod sql"
sql = """
DROP TABLE IF EXISTS Cinemas CASCADE;
CREATE TABLE Cinemas (
    id serial primary key,
    name varchar(255),
    address varchar(255)
);

DROP TABLE IF EXISTS Movies CASCADE;
CREATE TABLE Movies (
    id serial primary key,
    name varchar(255),
    description varchar(255),
    rating integer
);

DROP TABLE IF EXISTS Tickets CASCADE;
CREATE TABLE Tickets (
    id serial primary key,
    quantity integer,
    price float
);

DROP TABLE IF EXISTS Payments CASCADE;
CREATE TABLE Payments (
    id serial primary key,
    type varchar(255),
    date date
);
"""
