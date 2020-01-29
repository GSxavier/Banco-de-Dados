	CREATE DATABASE Musica_Tarde;

	USE Musica_Tarde;

	CREATE TABLE EstiloMusical(
	IdEstiloMusical		INT PRIMARY KEY IDENTITY,
	NomeDoEstilo	VARCHAR(200) NOT NULL
	);

	CREATE TABLE Artistas(
	IdArtistas	INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200),
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstiloMusical (IdEstiloMusical)
	);

	SELECT * FROM EstiloMusical;
	SELECT * FROM Artistas;