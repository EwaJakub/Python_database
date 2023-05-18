create_products_orders = "Zapytanie wpisz tutaj!"
add_product_order_1 = "Zapytanie wpisz tutaj!"
add_product_order_2 = "Zapytanie wpisz tutaj!"
add_product_order_3 = "Zapytanie wpisz tutaj!"

create_products_orders = "CREATE TABLE orders_products(
    id serial primary key,
    order_id int NOT NULL,
    product_id int NOT NULL,
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);"

add_product_order_1_2 = "INSERT INTO orders_products(order_id, product_id) VALUES (1,2), (2,2);"

select_prroduct_order = "SELECT * FROM orders
JOIN orders_products ON orders.id = orders_products.order_id
JOIN products ON products.id = orders_products.product_id;"