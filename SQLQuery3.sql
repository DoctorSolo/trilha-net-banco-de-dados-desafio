-- 1
SELECT Nome, Ano FROM dbo.Filmes


-- 2
SELECT Nome, Ano FROM dbo.Filmes
ORDER BY Ano


-- 3
SELECT * FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro'


-- 4
SELECT * FROM dbo.Filmes WHERE Ano = 1997


-- 5
SELECT * FROM dbo.Filmes WHERE Ano > 2000


-- 6
SELECT * FROM dbo.Filmes 
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao


-- 7
SELECT Ano, COUNT(*) quantidade FROM dbo.Filmes
GROUP BY Ano
ORDER BY quantidade DESC


-- 8
SELECT * FROM Atores WHERE Genero = 'M'


-- 9
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10
SELECT 
	Filmes.Nome, 
	Generos.Genero FROM Filmes INNER JOIN GENEROS
ON Filmes.Id = Generos.Id


-- 11
SELECT 
	Filmes.Nome, 
	Generos.Genero FROM Filmes INNER JOIN GENEROS
ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'


-- 12
SELECT 
	Filmes.Nome, 
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel 
	FROM Filmes INNER JOIN Atores ON Filmes.Id = Atores.Id
				INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdFilme
