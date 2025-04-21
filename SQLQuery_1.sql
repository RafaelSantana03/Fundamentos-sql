USE [Curso]

--Criando a tabela aluno
CREATE TABLE [Aluno](
    --Inserindo dados na tabela
    [Id] INT NOT NULL, 
    [Nome] NVARCHAR(80) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT,
)
GO

-- Fazendo alteração na tabela Aluno para tornar o campo Active obrigatório (NOT NULL)
ALTER TABLE[Aluno]
    ALTER COLUMN [Active] BIT NOT NULL