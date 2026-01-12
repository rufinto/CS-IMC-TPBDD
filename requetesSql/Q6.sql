SELECT * FROM

( SELECT dbo.tArtist.primaryName AS nomArtiste, Count(DISTINCT dbo.tJob.category) AS nbrResponsabilite
FROM dbo.tArtist 
JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
GROUP BY dbo.tArtist.primaryName ) AS result

WHERE result.nbrResponsabilite > 1
ORDER BY result.nbrResponsabilite ASC;