CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
	id BIGINT auto_increment,
    nome VARCHAR(255),
    preco DECIMAL(5,2),
    quantidade INT,
    marca VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, preco, quantidade, marca)
VALUES("Camiseta",19.90,5,"Lacote");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Calça",300.90,10,"Kelvin Cleiton");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Tênis",35.90,2,"Adidos");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Meia",100,2,"Naique");

INSERT INTO produtos(nome,preco,quantidade,marca)
VALUES("Boné",1035.90,5,"Pumba");

SELECT*FROM produtos;

SELECT*FROM produtos WHERE preco < 500;

SELECT*FROM produtos WHERE preco > 500;

UPDATE produtos
SET nome = "Camiseta"
WHERE id=1;

DELETE FROM produtos WHERE id=1;

-- -- comando que desativa o 'modo seguro' do mysql permitindo que seja executado update e delete
SET SQL_SAFE_UPDATES=0;










