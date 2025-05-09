-- Seleciona os 100 primeiros resultados da consulta
SELECT TOP 100
   [Curso].[Id],                      -- Seleciona a coluna 'Id' da tabela Curso
   [Curso].[Nome],                    -- Seleciona a coluna 'Nome' da tabela Curso
   [Categoria].[Id] AS [Categoria],   -- Seleciona o 'Id' da Categoria, mas renomeia (alias) como 'Categoria'
   [Categoria].[Nome]                 -- Seleciona o 'Nome' da Categoria
FROM 
    [Curso]
    -- Faz a junção da tabela Curso com a tabela Categoria
    INNER JOIN [Categoria]
        -- Condição da junção: o campo CategoriaId da tabela Curso deve ser igual ao Id da Categoria
        ON [Curso].[CategoriaId] = [Categoria].[Id]


    --[Id] IN (1, 2)


-- SELECT * FROM [Curso]

--     UPDATE --Atualizando dados da tabela [Categoria]
--         [Categoria]
--     SET
--         [Nome] = 'Azure'
--     WHERE
--         [Id] = 4

-- SELECT * FROM [Curso]

-- DELETE FROM
--     [Curso]
-- WHERE
--     [CategoriaId] = 3

-- DELETE FROM
--     [Categoria]
-- WHERE
--     [Id] = 3
