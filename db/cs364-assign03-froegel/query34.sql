-- List artists who have two or more albums that have 15 or more tracks on them,
-- listed from fewest to most albums. Your output columns should be listed as
-- ArtistName and NumAlbums in that order; note that you will need to alias
-- the columns to achieve this.(query34.sql)

SELECT Name, count(*)
    FROM Artist NATURAL JOIN (SELECT ArtistId, Name AS AlbumName
                                FROM Album NATURAL JOIN Track
                                GROUP BY AlbumId
                                HAVING count(*) > 14)
    GROUP BY Name
    HAVING count(*) > 1
    ORDER BY count(*)
