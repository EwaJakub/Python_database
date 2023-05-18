create_table_client_address = "Zapytanie wpisz tutaj!"
add_client_address_1 = "Zapytanie wpisz tutaj!"
add_client_address_2 = "Zapytanie wpisz tutaj!"
add_client_address_3 = "Zapytanie wpisz tutaj!"

create_table_client_address = "CREATE TABLE clientaddress (
    id serial primary key NOT NULL,
    city varchar(32),
    street varchar(64),
    house_nr varchar(8),
    client_id int NOT NULL UNIQUE,
    FOREIGN KEY(client_id) REFERENCES clients(id)
);"

add_client_address_1_2_3 = "INSERT INTO clientaddress(city, street, house_nr, client_id)
VALUES ('Warszawa', 'Puławska', '123', 1),
       ('Lublin', 'Puławska', '123', 2),
       ('Warszawa', 'Puławska', '121', 3),
       ('Lubin', 'Puławska', '7a', 4);"