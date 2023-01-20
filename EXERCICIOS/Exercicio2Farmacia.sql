CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	Categoria VARCHAR(255),
	Fabricante VARCHAR (255),

	PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255),
	Preco DECIMAL (5,2),
	Quantidade INT,
	Receita_medica BOOLEAN,
	categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (Categoria,Fabricante)
VALUES ("Hipertensão","Medley");

INSERT INTO tb_categorias (Categoria,Fabricante)
VALUES ("Diabetes","Neo Quimica");

INSERT INTO tb_categorias (Categoria,Fabricante)
VALUES ("Infantil","Medley");

INSERT INTO tb_categorias (Categoria,Fabricante)
VALUES ("Maquiagem","Revlon");

INSERT INTO tb_categorias (Categoria,Fabricante)
VALUES ("Higiene","Jhonson Jhonson");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Enalapril", 5.00, 50, true,  1);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Glicazida", 28.00, 100, true,  2);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Tylenol Baby", 33.50, 25, false,  3);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Batom Matte", 60.00, 10, false,  4);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Shampoo Baby", 48.00, 52, true,  5);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Pomada de assadura", 56.00, 3, false,  5);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Metformina", 10.00, 102, true,  2);

INSERT INTO tb_produtos(Nome, Preco, Quantidade, Receita_medica, categoria_id)
VALUES ("Lápis para olhos", 74.00, 50, true,  4);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE Preco > 50;

SELECT *
FROM tb_produtos
WHERE Preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos
WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias

ON tb_categorias.id = tb_produtos.categoria_id

WHERE Nome LIKE "%Higiene%";
















