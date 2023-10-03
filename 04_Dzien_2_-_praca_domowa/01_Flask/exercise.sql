CREATE TABLE author (
    author_id serial primary key,
    name varchar(255)
);

CREATE TABLE book (
    book_id serial primary key,
    author_id int,
    ISBN varchar(13),
    name text,
    description text,
    is_loaned bool default False,
    FOREIGN KEY(author_id) REFERENCES author(author_id)
);

CREATE TABLE category (
    category_id serial primary key,
    ISBN varchar(13),
    name text
);

CREATE TABLE book_category (
    id serial primary key,
    book_id int not null,
    category_id int not null,
    FOREIGN KEY(book_id) REFERENCES book(book_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id)
);

CREATE TABLE client(
    id serial primary key,
    first_name text,
    last_name text
);

CREATE TABLE client_book(
    loan_date date,
    return_date date default null
);
