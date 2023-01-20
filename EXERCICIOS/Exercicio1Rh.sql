CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255),
	CPF DECIMAL(11),
	Tempo_de_empresa DECIMAL(2),
	Setor VARCHAR(255),
    Salario DECIMAL(8,2),

	PRIMARY KEY(id)
);

INSERT INTO colaboradores(Nome, CPF, Tempo_de_empresa, Setor, Salario)
VALUES ("Daniela", "41784578741", 4, "Administracao", "3500.00");

INSERT INTO colaboradores(Nome, CPF, Tempo_de_empresa, Setor, Salario)
VALUES ("Bianca", "58794248963", 10, "Atendimento", "2700.00");

INSERT INTO colaboradores(Nome, CPF, Tempo_de_empresa, Setor, Salario)
VALUES ("Maria", "75548165874", 3, "Copa", "1400.00");

INSERT INTO colaboradores(Nome, CPF, Tempo_de_empresa, Setor, Salario)
VALUES ("Jorge", "58794248963", 8, "Portaria", "1800.00");

INSERT INTO colaboradores(Nome, CPF, Tempo_de_empresa, Setor, Salario)
VALUES ("Fellipe", "41856324587", 12, "T.I", "5800.00");

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE Salario > 2000.00;

SELECT * FROM colaboradores WHERE Salario < 2000.00;

UPDATE colaboradores
SET Salario = "1800.00"
WHERE id=4 









