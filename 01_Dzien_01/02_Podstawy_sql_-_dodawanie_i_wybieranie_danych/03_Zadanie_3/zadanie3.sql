add_movies = "Zapytanie wpisz tutaj!"
add_tickets = "Zapytanie wpisz tutaj!"

get_movies = "Zapytanie wpisz tutaj!"
get_tickets_1 = "Zapytanie wpisz tutaj!"
get_tickets_2 = "Zapytanie wpisz tutaj!"

add_movies = "INSERT INTO movies(name, description, rating)
VALUES ('Toy Story', 'super film', 5),
       ('Toy Story2', 'super film', 3),
       ('Wolverine', 'super film o walverinie', 4);"

add_tickets = "INSERT INTO tickets(quantity, price)
VALUES(1, 12.40),
    (2, 27.40),
    (3, 27.40),
    (4, 27.40);"

get_movies = "SELECT * FROM movies WHERE name LIKE 'W%';"
get_tickets_1 = "SELECT * FROM tickets WHERE price > 15.30;"
get_tickets_2 = "SELECT * FROM tickets WHERE quantity > 3;"