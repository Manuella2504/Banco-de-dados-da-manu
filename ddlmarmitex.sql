CREATE DATABASE Marmitex;
USE marmitex;

create table login(
id integer not null,
email varchar(255) not null,
senha varchar(255) not null,
nivel_acesso integer not null
,
primary key(id)
);

create table pedido(
id integer not null,
telefone_cliente varchar(255) not null,
id_entregador integer not null,
status varchar(255) not null,
taxa_entrega varchar(255),
data_pedido datetime,
primary key(id)
);

create table cliente(
telefone varchar(255),
nome varchar(255),
endereco varchar(225),
pontoreferencia varchar(255),
primary key(telefone)
);

create table item_pedido(
id_marmita integer,
id_pedido integer,
quantidade integer
);

create table marmita(
id integer,
nome varchar(255),
descricao mediumtext,
primary key(id)
);

create table entregador(
id integer
)
create table empresa()

