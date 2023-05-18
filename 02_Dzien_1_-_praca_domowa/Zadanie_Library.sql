sql = "CREATE DATABASE library_db;"

commands = """CREATE TABLE author (
    id serial primary key,
    name varchar(255)
);

CREATE TABLE book
(
    id serial primary key,
    ISBN varchar(13),
    name text,
    description text,
    is_loaned bool default False
);

CREATE TABLE client
(
    id   serial primary key,
    first_name text,
    last_name text
);

CREATE TABLE category
(
    id   serial primary key,
    ISBN varchar(13),
    name text
);

INSERT INTO author(name)
VALUES ('Autor 1'),
       ('Autor 2'),
       ('Autor 3'),
       ('Autor 4'),
       ('Autor 5');

INSERT INTO book(ISBN, name, description)
VALUES ('845748234', 'Book 1', 'opis1'),
       ('187432375', 'Book 2', 'opis2'),
       ('434574383', 'Book 3', 'opis3'),
       ('124574323', 'Book 4', 'opis4'),
       ('872464353', 'Book 5', 'opis5'),
       ('124574323', 'Book 6', 'opis6'),
       ('188974383', 'Book 7', 'opis7'),
       ('124574323', 'Book 8', 'opis8'),
       ('124374323', 'Book 9', 'opis9'),
       ('128654323', 'Book 10', 'opis10');

INSERT INTO client(first_name, last_name)
VALUES ('Ewa', 'Jakubowska'),
        ('Jan', 'Kowalski'),
       ('Kasia', 'Kowalska');

SELECT name FROM author;

SELECT name FROM author WHERE id = 2;

SELECT name FROM book;

SELECT name FROM book WHERE id = 2;

SELECT first_name, last_name FROM client;

SELECT first_name, last_name FROM client WHERE id = 1;

DELETE FROM book WHERE id = 5;

SELECT * FROM book;"""