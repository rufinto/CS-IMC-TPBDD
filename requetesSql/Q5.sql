SELECT * FROM

( SELECT dbo.tArtist.primaryName AS nomArtiste, Count(dbo.tJob.idFilm) AS nbrFilmJoue
FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
WHERE category = 'acted in'
GROUP BY dbo.tArtist.primaryName ) AS result

WHERE result.nbrFilmJoue > 1
ORDER BY result.nbrFilmJoue ASC;