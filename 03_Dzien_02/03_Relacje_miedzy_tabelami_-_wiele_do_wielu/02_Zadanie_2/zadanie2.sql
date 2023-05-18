create_screenings_table = "Zapytanie wpisz tutaj!"
add_screenieng_1 = "Zapytanie wpisz tutaj!"
add_screenieng_2 = "Zapytanie wpisz tutaj!"
add_screenieng_3 = "Zapytanie wpisz tutaj!"

create_screenings_table = "CREATE TABLE screening(
    id serial NOT NULL PRIMARY KEY,
    datetime timestamp,
    cinemas_id int NOT NULL,
    movies_id int NOT NULL,
    FOREIGN KEY(cinemas_id) REFERENCES cinemas(id),
    FOREIGN KEY(movies_id) REFERENCES movies(id)
);"

add_screenieng_1_2_3 = "INSERT INTO screening(cinemas_id, movies_id)
VALUES (1, 4),
       (2, 4),
       (1, 3);"

select_tables = "SELECT * FROM cinemas
JOIN screening ON cinemas.id = screening.cinemas_id
JOIN movies ON movies.id = screening.movies_id;"