 --CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde;

--APONTAR PARA O BANCO QUE QUERO USAR
USE Biblioteca_Tarde;

--CRIAR TABELAS
	CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200) NOT NULL
);
	CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL

);
	CREATE TABLE Livro (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255), 
	IdAutor	    INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
	);
	
	SELECT * FROM Generos;
	SELECT * FROM Autores;
	SELECT * FROM Livro;

	INSERT INTO Autores(NomeAutor)
	VALUES ('Jonh Week'),('Alice Marqs'),('Angelica Gues'),('Fernando Pessoa'),('Jorge Amado');

	INSERT INTO Generos(Nome)
	VALUES ('Suspense'),('Comedia'),('Romance'),('Terror'),('Aventura');

	INSERT INTO Livro(Titulo,IdAutor,IdGenero)
	VALUES ('A Casa do Terror',1,4)

	INSERT INTO Livro(Titulo,IdAutor,IdGenero)
	VALUES ('Cronicas de um Babaca',2,2)

    INSERT INTO Livro(Titulo,IdAutor,IdGenero)
	VALUES ('Floresta Clara',3,1)
	
	INSERT INTO Livro(Titulo,IdAutor,IdGenero)
	VALUES ('Paixao Perdida',4,3)

	INSERT INTO Livro(Titulo,IdAutor,IdGenero)
	VALUES ('Capitaes da Areia',5,5)

	
	UPDATE Generos
	SET Nome = 'Comedia Romantica'
	WHERE IdGenero = 3;

	UPDATE Livro
	SET IdGenero = 1
	WHERE IdLivro = 1;

	DELETE FROM Livro
    WHERE IdLivro = 1;

	DELETE FROM Autores
	WHERE IdAutor = 1;




	--ALTERAR ADICIONAR UMA NOVA COLUNA
	ALTER TABLE Generos
	ADD Descricao VARCHAR(255)

	--ALTERAR TIPO DE DADO
	ALTER TABLE Generos
	ALTER COLUMN Descricao CHAR(100);

	--ALTERAR EXCLUIR COLUNA 
	ALTER TABLE Generos
	DROP COLUMN Descricao;

	--EXCLUIR
	DROP TABLE Livro;
	DROP TABLE Generos;
	DROP TABLE Autores;
	