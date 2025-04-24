SELECT DISTINCT TOP 100
    [Id], [Nome], [CategoriaId]
FROM 
    [Curso]
-- WHERE
--     [Id] = 1 OR 
--     [CategoriaId] IS NOT NULL

ORDER BY
    [Nome] DESC
     