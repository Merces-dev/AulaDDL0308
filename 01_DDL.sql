/*
	DDL - Data Definition Language
*/

-- Criar o Banco
-- CREATE DATABASE boletim;

-- Usar efetivamente o banco
USE boletim;



/* Criamos a tabela Aluno
	IDENTITY - Gera os ids automaticamente, incrementando-os
*/
CREATE TABLE Aluno(
	IdAluno INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);


-- Criamos a tabela Materia
CREATE TABLE Materia(
	IdMateria INT PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50)
);

CREATE TABLE Trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- Colocamos as Foreign Keys
	IdMateria INT FOREIGN KEY REFERENCES Materia (IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES Aluno (IdAluno)
);

-- Apagamos uma base de dados
-- DROP DATABASE boletim;

-- Apagamos uma tabela caso necessário
-- DROP TABLE Aluno;
-- DROP TABLE Materia;
-- DROP TABLE Trabalho;

-- Alterar a estrutura da tabela Trabalho, incluindo uma nova coluna

ALTER TABLE Trabalho ADD DataEntrega DATETIME;


-- ALTER TABLE Trabalho ADD Teste INT;
-- ALTER TABLE Trabalho DROP COLUMN Teste;