SELECT dbo.tArtist.primaryName AS nomArtiste, Count(dbo.tJob.idFilm) AS nbrFilmJoue
FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
WHERE dbo.tJob.category = 'acted in'
GROUP BY dbo.tArtist.primaryName 
HAVING Count(dbo.tJob.idFilm) > 1
ORDER BY nbrFilmJoue ASC;