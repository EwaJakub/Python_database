sql = """
\c cinemas_db
DROP TABLE IF EXISTS Cinemas;
CREATE TABLE Cinemas (
    id serial,
    name varchar(255),
    address varchar(255),
    PRIMARY KEY(id)
);
DROP TABLE IF EXISTS Movies;
CREATE TABLE Movies (
    id serial,
    name varchar(255),   
    description varchar(255),
    rating integer,
    PRIMARY KEY(id)
);
DROP TABLE IF EXISTS Tickets;
CREATE TABLE Tickets (
    id serial,
    quantity integer,
    date date,
    PRIMARY KEY(id)
);
DROP TABLE IF EXISTS Payments;
CREATE TABLE Payments (
    id serial,
    type varchar(255),
    date date,
    PRIMARY KEY(id)
);
"""