CREATE DATABASE Escola;

USE Escola;

CREATE TABLE Alunes(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
RA INT,
Turma VARCHAR (255),
Nota DECIMAL(3,1),
Faltas INT,

PRIMARY KEY (id)
);

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Beatriz", "45678", "4B", "10", "0");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Pedro", "35478", "4B", "6.5", "4");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Amanda", "15648", "5B", "7", "1");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Henrique", "85236", "4B", "10", "10");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Gabriel", "15748", "5B", "8.5", "3");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Zayan", "56178", "7B", "10", "0");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Valentina", "34785", "7B", "5", "5");

INSERT INTO Alunes(Nome, RA, Turma, Nota, Faltas)
VALUES("Enzo", "47844", "7B", "7", "0");

SELECT * FROM Alunes;

SELECT * FROM Alunes WHERE Nota < 7;
SELECT * FROM Alunes WHERE Nota > 7;

UPDATE Alunes
SET Nota ="8.8"
WHERE id=5;







 

