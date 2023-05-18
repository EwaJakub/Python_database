create_comments_table = "Zapytanie wpisz tutaj!"
add_comments = "Zapytanie wpisz tutaj!"

create_comments_table = "CREATE TABLE comments(
    id serial NOT NULL primary key,
    content varchar(255),
    movie_id int NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movies(id)
);"

add_comments = "INSERT INTO comments(content, movie_id)
VALUES ('Super', 2),
       ('Hiper', 3),
       ('Extra', 4);"

select_movies_comments = "SELECT movies.name, comments.content FROM movies
    JOIN comments ON movies.id = comments.movie_id
    ORDER BY movies.name
;"
