USE [Curso]

DROP TABLE [Aluno]
--Criando a tabela aluno
CREATE TABLE [Aluno](
    --Inserindo dados na tabela
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL , --O comando "UNIQUE" Não permite que tenham dois "Id" de mesmo valor
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    CONSTRAINT[PK_Aluno] PRIMARY key([Id]), -- Nomeando chaves primarias e unicas
    CONSTRAINT[UQ_Aluno_Email] UNIQUE([Email]),
)
GO

DROP TABLE [Curso]
CREATE TABLE [Curso](    
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId]  INT NOT NULL,

    CONSTRAINT[PK_Curso] PRIMARY key([Id]), 
    CONSTRAINT[FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([Id])
)
GO

CREATE TABLE [Categoria](    
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT[PK_Categoria] PRIMARY key([Id]), 
)
GO

DROP TABLE [ProgressoCurso]
--Criando uma tabela asociativa que liga as duas tabelas
CREATE TABLE [ProgressoCurso](    
    [AlunoId] INT NOT NULL,
    [CursoId] INT NOT NULL,
    [Progresso] INT NOT NULL,
    [UltimaAtualização] DATETIME NOT NULL DEFAULT(GETDATE()),

    CONSTRAINT PK_ProgressoCurso PRIMARY KEY ([AlunoId], [CursoId]),
)
GO

