SELECT dbo.tArtist.primaryName AS nomArtiste, Count(DISTINCT dbo.tJob.category) AS nbrResponsabilite
FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
GROUP BY dbo.tArtist.idArtist, dbo.tArtist.primaryName
HAVING Count(DISTINCT dbo.tJob.category) > 1
ORDER BY nbrResponsabilite ASC;