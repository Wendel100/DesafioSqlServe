--SELECT *from Filmes
--1
SELECT Nome, Ano from Filmes
--2
SELECT Nome, Ano from Filmes
ORDER BY Ano ASC
--3
SELECT Nome, Ano,Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro';
--4
SELECT Nome, Ano from Filmes
WHERE Ano =1997;
--5
SELECT Nome, Ano from Filmes
WHERE Ano >2000;
--6
SELECT Nome, Ano, Duracao from Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
--8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'
--9
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
--10
SELECT Nome, Genero
FROM Filmes
INNER JOIN Generos
ON Filmes.Id = Filmes.Id
where Filmes.Id =Generos.Id
--11
SELECT Nome, Genero
FROM Filmes
INNER JOIN Generos
ON Filmes.Id = Filmes.Id
where Genero ='Mistério';
--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes
INNER JOIN Atores
ON Filmes.Id = Filmes.Id
INNER JOIN ElencoFilme
ON Filmes.Id = Filmes.Id