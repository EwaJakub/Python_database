create_opinions_table = "Zapytanie wpisz tutaj!"
add_opinions = "Zapytanie wpisz tutaj!"
select_opinions = "Zapytanie wpisz tutaj!"

create_opinions_table = "CREATE TABLE opinions (
    id serial NOT NULL primary key,
    description varchar(255),
    product_id int NOT NULL,
    FOREIGN KEY(product_id) REFERENCES products(id)
);"

add_opinions = "INSERT INTO opinions(description, product_id)
VALUES ('Super produkt', 2),
       ('Super produkt2', 2),
       ('Super produkt super', 3);"


select_opinions = "SELECT products.name, opinions.description
FROM products JOIN opinions
ON products.id = opinions.product_id;"