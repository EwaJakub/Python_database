create_table_payments = "Zapytanie wpisz tutaj!"

create_table_payments "CREATE TABLE purchases(
    id serial NOT NULL primary key,
    purchase_status smallint,
    ticket_id int NOT NULL UNIQUE,
    FOREIGN KEY(ticket_id) REFERENCES tickets(id)
);"

inster_payments = "INSERT INTO purchases(purchase_status, ticket_id)
VALUES (0, 1);"
