-- Wykład dzien 2:

CREATE TABLE customers(
  customer_id serial NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY(customer_id)
);
CREATE TABLE addresses(
  address_id serial NOT NULL,
  customer_id int,
  street varchar(255),
  PRIMARY KEY(address_id)
);

INSERT INTO customers(name)
VALUES('Andrzej'),
       ('Kamil'),
       ('Genowefa');

INSERT INTO addresses(customer_id, street)
VALUES (2, 'Prosta'),
        (1, 'Prosta');

INSERT INTO addresses(customer_id, street)
VALUES (4, 'Prosta');

SELECT addresses.street, customers.name
FROM addresses JOIN customers
ON addresses.customer_id = customers.customer_id;

SELECT addresses.street, customers.name
FROM addresses FULL JOIN customers
ON addresses.customer_id = customers.customer_id;

-- Zadanie wiele powiązań
CREATE TABLE screening(
    id serial primary key,
    datetime timestamp,
    cinemas_id int not null,
    movies_id int not null,
    FOREIGN KEY(cinemas_id) REFERENCES cinemas(id),
    FOREIGN KEY(movies_id) REFERENCES movies(id)
);

INSERT INTO screening(cinemas_id, movies_id)
VALUES (1, 3),
       (3, 2),
       (3, 4);

SELECT *
FROM cinemas JOIN Screening
ON cinemas.id = Screening.cinemas_id JOIN movies
ON Screening.movies_id = movies.id