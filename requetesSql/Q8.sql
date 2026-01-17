SELECT dbo.tArtist.primaryName AS nomArtiste, dbo.tArtist.idArtist AS idArtist,
dbo.tFilm.primaryTitle AS nomFilm, dbo.tFilm.idFilm AS idFilm,
COUNT(dbo.tJob.category) AS nbrResponsabiliteDansLeFilm FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
JOIN dbo.tFilm ON dbo.tJob.idFilm = dbo.tFilm.idFilm
GROUP BY dbo.tFilm.idFilm, dbo.tFilm.primaryTitle, dbo.tArtist.idArtist, dbo.tArtist.primaryName
HAVING COUNT(dbo.tJob.category) > 1
ORDER BY nbrResponsabiliteDansLeFilm DESC;