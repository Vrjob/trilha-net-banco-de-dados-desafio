-- Uni todos em uma consulta, não sei se pode, mas achei mais pratico do que separados.

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM Filmes 

UNION ALL

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano 

UNION ALL

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'Back to the Future'

UNION ALL

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano 
FROM Filmes 
WHERE Ano = 1997 

UNION ALL

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano 
FROM Filmes 
WHERE Ano > 2000 

UNION ALL

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Ano 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao 

UNION ALL

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Duracao DESC 

UNION ALL

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'M'

UNION ALL

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome 

UNION ALL

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero 
FROM Filmes F 
JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
JOIN Generos G ON FG.IdGenero = G.Id

UNION ALL

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero 
FROM Filmes F 
JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
JOIN Generos G ON FG.IdGenero = G.Id 
WHERE G.Genero = 'Mistério'

UNION ALL

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Filmes F 
JOIN ElencoFilme EF ON F.Id = EF.IdFilme 
JOIN Atores A ON EF.IdAtor = A.Id;
