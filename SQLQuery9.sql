--1
select Nome, Ano from Filmes;

--2
Select Nome, Ano, Duracao from Filmes 
ORDER BY Ano;


--3 

SELECT Nome, Ano, Duracao from Filmes WHERE Nome = 'De Volta para o Futuro';


--4
Select Nome, Ano, Duracao from Filmes WHERE Ano = 1997;


--5 
SELECT Nome, Ano, Duracao from Filmes WHERE Ano > 2000;

--6


Select Nome, Ano, Duracao from Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao;


--7
SELECT Ano, COUNT(*) AS QuantiadeFilme FROM Filmes GROUP BY Ano ORDER BY QuantiadeFilme DESC;

--8

select PrimeiroNome, UltimoNome, Genero from Atores WHERE Genero = 'M';


-- 9 

	SELECT PrimeiroNome, UltimoNome, Genero from Atores WHERE Genero = 'F' ORDER By PrimeiroNome ASC;

-- 10 

SELECT F.Nome, G.Genero FROM Filmes AS F inner join FilmesGenero as FG On F.Id = FG.IdFilme inner join Generos As G ON FG.IdGenero = G.Id;

--11

SELECT F.Nome, G.Genero FROM Filmes AS F inner join FilmesGenero as FG On F.Id = FG.IdFilme inner join Generos As G ON FG.IdGenero = G.Id WHERE Genero = 'Mistério';


--12 

SELECT Nome, PrimeiroNome, UltimoNome,Papel FROM Filmes As F inner join ElencoFilme as EF ON F.Id = EF.IdFilme inner join Atores as A on EF.IdAtor = A.Id;