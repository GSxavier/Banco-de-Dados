CREATE DATABASE Optus_Tarde;
USE Optus_Tarde;

CREATE TABLE TipoUsuario (
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(200)
);

CREATE TABLE Usuario (
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200),
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Artista (
	IdArtista		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200)
);

CREATE TABLE Estilo (
	IdEstilo		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200)
);

CREATE TABLE Albuns (
	IdAlbum			INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200) UNIQUE,
	DataLancamento	DATE,
	QtdMinutos		BIGINT,
	Visualisacao	BIGINT,
	IdArtista		INT FOREIGN KEY REFERENCES Artista (IdArtista),
	IdEstilo		INT FOREIGN KEY REFERENCES Estilo (IdEstilo)
);
SELECT * FROM Albuns;
SELECT * FROM Usuario;

--ALTERAR ADICIONAR
ALTER TABLE  Usuario 
add Senha VARCHAR(200)

--ALTERAR TABELA PARA REMOVER
ALTER TABLE Usuario
DROP COLUMN Senha

--DML LINGUAGEM DE DADOS

SELECT * FROM Estilo;
SELECT * FROM Albuns;
SELECT * FROM Artista;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;

--COMANDO DE INSERIR DADOS
INSERT INTO Estilo (Nome)
VALUES ('Pagode'),('Samba'),('Rock'),('Rap'),('Funk');

INSERT INTO Artista (Nome)
VALUES ('Anita'),('Zeca Pagodinho'),('Pitty'),('Djonga'),('Mc Menor da GV');

INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'),('Comun');

INSERT INTO Usuario (Nome,IdTipoUsuario)
VALUES('Anderson',1)

INSERT INTO Usuario (Nome,IdTipoUsuario)
VALUES('Katia',2)

INSERT INTO Usuario (Nome,IdTipoUsuario)
VALUES('Evandro',2)

INSERT INTO Usuario (Nome,IdTipoUsuario)
VALUES('Armando',2)

INSERT INTO Usuario (Nome,IdTipoUsuario)
VALUES('Fatima',2)


INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualisacao,IdArtista,IdEstilo)
VALUES ('Equalize','29/01/2020',120,100000,2,2);

INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualisacao,IdArtista,IdEstilo)
VALUES ('Heresia','13/03/2019',100,1277887,7,7)

INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualisacao,IdArtista,IdEstilo)
VALUES ('Rebola','27/11/2019',89,736333,4,8)

INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualisacao,IdArtista,IdEstilo)
VALUES ('Esperança','11/10/2017',140,344441,6,4)

INSERT INTO Albuns(Nome,DataLancamento,QtdMinutos,Visualisacao,IdArtista,IdEstilo)
VALUES ('De Cria','03/02/2018',123,889911,8,8)

UPDATE Artista
SET Nome = 'Arlindo Cruz'
WHERE IdArtista = 6;

UPDATE TipoUsuario
SET Titulo = 'Administrador'
WHERE IdTipoUsuario = 2;

UPDATE Albuns
SET Visualisacao = '9999999999'
WHERE IdAlbum = 2;

DELETE FROM Albuns
WHERE IdAlbum = 3;




--APAGAR LINHA 
DELETE FROM Estilo
WHERE IdEstilo = 2;

--ALTERAR DADOS
UPDATE Estilo
SET Nome = 'Samba'
WHERE IdEstilo = 2;

--LIMPAR TODOS OS DADOS
TRUNCATE TABLE Albun;


DELETE FROM Artista
WHERE IdArtista = 5;






