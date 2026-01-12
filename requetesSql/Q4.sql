SELECT TOP 1 birthYear, COUNT(DISTINCT idArtist) AS nbrNaissances FROM dbo.tArtist
WHERE birthYear != 0
GROUP BY birthYear
ORDER BY nbrNaissances DESC;