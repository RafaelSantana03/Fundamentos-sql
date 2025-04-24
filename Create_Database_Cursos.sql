CREATE DATABASE [Cursos]
GO

USE [Cursos]

CREATE TABLE [Categoria](    
    [Id] INT NOT NULL IDENTITY(1 ,1),
    [Nome] NVARCHAR(80) NOT NULL,

    CONSTRAINT[PK_Categoria] PRIMARY key([Id]), 
)
GO

CREATE TABLE [Curso](    
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId]  INT NOT NULL,

    CONSTRAINT[PK_Curso] PRIMARY key([Id]), 
    CONSTRAINT[FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([Id])
)
GO



