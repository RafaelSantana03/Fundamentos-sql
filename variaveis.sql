 CREATE OR ALTER PROCEDURE [spListCourse] AS 

    --DECLARE @Id INT --Declarando uma variavel
    --SET @Id = 9 --Atribuindo valor a variavel

    DECLARE @CategoryID INT
    SET @CategoryID = (SELECT TOP 1 [Id] FROM [Categoria] WHERE [Nome] = 'Backend')

    SELECT * FROM [Curso] WHERE [CategoriaId] = @CategoryID

