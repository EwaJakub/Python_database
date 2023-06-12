add_products_sql = "Zapytanie wpisz tutaj!"
add_orders_sql = "Zapytanie wpisz tutaj!"
add_clients_sql = "Zapytanie wpisz tutaj!"

SELECT * FROM Products;
add_products_sql = INSERT INTO Products(name, description, price)
VALUES ('drill', 'The best drill every', 99.99),
       ('knife', 'You can''t find sharper than this', 80.99)
;

SELECT * FROM Orders;
add_orders_sql = INSERT INTO orders (description)
VALUES ('It''s for my birthday'),
       ('I need it now'),
       ('Seems like a good stuff'),
       ('Gimme more of that')
;

SELECT * FROM Clients;
add_clients_sql = INSERT INTO clients (name, surname)
VALUES ('Stephen', 'Skipper'),
       ('Donald', 'Honeycutt'),
       ('Vickie', 'Gilbert'),
       ('John', 'Lovely')
;