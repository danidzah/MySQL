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

-- Insercao de dados na tabela

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

-- Select e retorna todos os dados da tabela

SELECT*FROM produtos;

-- select qie retorna somente os valores menores que 500.00

SELECT*FROM produtos WHERE preco < 500;

-- retorne apenas os produtos como os valores maior que 500

SELECT*FROM produtos WHERE preco > 500;

-- atualizar itens tabela
UPDATE produtos
SET nome = "Base Líquida Matte"
WHERE id=1;

-- BÔNUS
-- função que deleta um determinado dado de uma tabela

DELETE FROM produtos WHERE id=1;

-- -- comando que desativa o 'modo seguro' do mysql permitindo que seja executado update e delete
SET SQL_SAFE_UPDATES=0;










