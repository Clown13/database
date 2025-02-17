create table customers
(
    customer_id serial
        primary key,
    name        varchar(255) not null,
    country     varchar(255) not null
);

alter table customers
    owner to postgres;

create index idx_customer_name
    on customers (name);

create table orders
(
    order_id    serial
        primary key,
    customer_id integer
        references customers,
    product     varchar(255) not null
);

alter table orders
    owner to postgres;

create index idx_orders_customer_id
    on orders (customer_id);


