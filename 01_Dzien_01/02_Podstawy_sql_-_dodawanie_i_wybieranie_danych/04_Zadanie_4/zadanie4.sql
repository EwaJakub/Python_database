add_cinemas = "Zapytanie wpisz tutaj!"
add_payments = "Zapytanie wpisz tutaj!"

DROP TABLE IF EXISTS Cinemas CASCADE;
CREATE TABLE Cinemas (
    id serial primary key,
    name varchar(255),
    address varchar(255)
);

DROP TABLE IF EXISTS Payments CASCADE;
CREATE TABLE Payments (
    id serial primary key,
    type varchar(255),
    date date
);

add_cinemas = INSERT INTO Cinemas(name, address)
VALUES ('atlantic', 'chmielna'),
    ('kinoteka', 'palac kultury'),
    ('multikino', 'zlote tarasy'
);

add_payments = INSERT INTO Payments(type, date)
VALUES ('cash', '2020-02-01'),
        ('card', '2020-12-12'),
        ('card', '2021-02-11'
);