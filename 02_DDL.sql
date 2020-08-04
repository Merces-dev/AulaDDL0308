/*
	DDL - Data Definition Language
*/

-- Criar o Banco
-- CREATE DATABASE atendimentosPet;

-- Usar efetivamente o banco
USE atendimentosPet;

-- Criamos a tabela Clinica
CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(30) NOT NULL,
	Endereco VARCHAR(50)
);

-- Criamos a tabela TipoPet
CREATE TABLE TipoPet(
	IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(20)
);

-- Criamos a tabela Dono
CREATE TABLE Dono(
	IdDono INT IDENTITY PRIMARY  KEY NOT NULL,
	Nome VARCHAR(70)
);

-- Criamos a tabela Veterinario
CREATE TABLE Veterinario(
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	CRV VARCHAR(30),
	Nome VARCHAR(70)
);

-- Criamos a tabela Raca
CREATE TABLE Raca(
	IdRaca INT IDENTITY PRIMARY KEY NOT NULL,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet),
	Descricao VARCHAR(20)
);

-- Criamos a tabela Pet
CREATE TABLE Pet(
	IdPet INT IDENTITY PRIMARY KEY NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
	Nome VARCHAR(70),
	DataNascimento DATETIME
);

-- Criamos a tabela Atendimento
CREATE TABLE Atendimento(
	IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario),
	Descricao VARCHAR(50),
	DataAtendimento DATETIME,
)
