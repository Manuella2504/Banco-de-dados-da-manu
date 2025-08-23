/*
Banco Marmita
1. Inserir 10 registros em todas as tabelas.
2. Atualizar 5 registros em todas as tabelas.
3 - Deletar 2 registros em todas as tabelas.
*/

/*1. Inserir 10 registros em todas as tabelas.*/
ALTER table cliente
ADD COLUMN rua varchar(255) not null;

ALTER table cliente
ADD COLUMN numero int not null;

ALTER table cliente
ADD COLUMN pais varchar(255) not null;

ALTER table cliente
ADD COLUMN estado varchar(255) not null;

ALTER table cliente
ADD COLUMN cep varchar(255) not null;

/* 2. Atualizar 5 registros em todas as tabelas.*/
ALTER TABLE empresa
MODIFY COLUMN telefone_cliente int not null;

ALTER TABLE empresa
MODIFY COLUMN taxa_entrega float not null;

ALTER TABLE empresa
MODIFY COLUMN data_pedido date not null;


/* 3 - Deletar 2 registros em todas as tabelas.*/
DELETE FROM cliente
WHERE telefone = 71986025783;

DELETE FROM entregador
WHERE id = 1;

DELETE FROM entregador
WHERE id = 8;







