/*
	DDL - Data Definition Language
*/

-- Criar o Banco
-- CREATE DATABASE optusMusic;

-- Usar efetivamente o banco
USE optusMusic;
-- Criamos a tabela Estilo
CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(40)
);

-- Criamos a tabela Usuario
CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(70),
	Permissao INT NOT NULL,
	Senha VARCHAR(20),
	Email VARCHAR(50)
);

-- Criamos a tabela Artista
CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo),
	Nome VARCHAR(70),
);

-- Criamos a tabela Album
CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY NOT NULL,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista),
	Nome VARCHAR(70),
	DataLancamento DATETIME,
	Localizacao VARCHAR(70),
	QtdMinutos FLOAT,
	Ativo BINARY,
);


-- Criamos a tabela EstiloAlbum
CREATE TABLE EstiloAlbum(
	IdEstiloAlbum INT PRIMARY KEY NOT NULL,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo),
);
-- DROP DATABASE optusMusic

