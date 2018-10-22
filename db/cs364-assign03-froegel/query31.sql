/*List the names of each artist and the number of tracks they ever sang (i.e.,had on albums).
Your output columns should be listed as ArtistName and NumTracks in that order;
note that you will need to alias the columns to achieve this.(query31.sql)*/

SELECT ArtistName, count(*)
    FROM Track NATURAL JOIN Album NATURAL JOIN (SELECT ArtistId, Name AS ArtistName FROM Artist) AS a
    GROUP BY ArtistName