SELECT primaryName FROM dbo.tArtist WHERE birthYear = 1960;
SELECT COUNT(DISTINCT idArtist) AS nbrArtist FROM dbo.tArtist WHERE birthYear = 1960;