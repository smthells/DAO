CREATE TABLE customers
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(128) NOT NULL,
    surname      VARCHAR(128) NOT NULL,
    age          INT CHECK ( age > 0 AND age < 150 ),
    phone_number VARCHAR(20)
);

INSERT INTO customers(name, surname, age, phone_number)
VALUES ('Kirill', 'Makarov', 23, '88005553535'),
       ('Alexey', 'Ivanov', 28, '88005553536'),
       ('Dmitriy', 'Dmitrievich', 20, '88005553537'),
       ('alexey', 'Davidov', 36, '88005553538'),
       ('Oleg', 'Olegovich', 35, '88005553539'),
       ('ALEXEY', 'Pavlov', 41, '88005553531'),
       ('Denis', 'Denisovich', 29, '88005553532');

CREATE TABLE orders
(
    id           SERIAL PRIMARY KEY,
    date         DATE         NOT NULL,
    customers_id INT          NOT NULL,
    product_name VARCHAR(128) NOT NULL,
    amount       INT,
    FOREIGN KEY (customers_id) REFERENCES customers (id)
);

INSERT INTO orders(date, customers_id, product_name, amount)
VALUES ('2023-10-29', 1, 'iPhone', 50000),
       ('2023-11-10', 2, 'iPad', 75000),
       ('2023-05-15', 3, 'Mac', 100000),
       ('2023-01-20', 4, 'iPod', 10000),
       ('2023-08-11', 6, 'AirPods', 25000);