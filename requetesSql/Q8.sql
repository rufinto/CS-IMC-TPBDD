SELECT dbo.tArtist.primaryName AS nomArtiste, dbo.tFilm.primaryTitle AS nomFilm,
COUNT(dbo.tJob.category) AS nbrResponsabilite FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
JOIN dbo.tFilm ON dbo.tJob.idFilm = dbo.tFilm.idFilm
GROUP BY dbo.tFilm.primaryTitle, dbo.tArtist.primaryName
HAVING COUNT(dbo.tJob.category) > 1;