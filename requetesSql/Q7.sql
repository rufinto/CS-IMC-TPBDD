SELECT dbo.tFilm.primaryTitle AS nomFilm, Count(dbo.tJob.idArtist) AS nbrArtists
FROM dbo.tFilm 
JOIN dbo.tJob ON dbo.tFilm.idFilm = dbo.tJob.idFilm
WHERE dbo.tJob.category = 'acted in'
GROUP BY dbo.tFilm.primaryTitle
ORDER BY nbrArtists DESC;