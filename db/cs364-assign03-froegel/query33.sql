/*List those artists who have five or more songs that start with the word 'The'. Your output columns should be listed as ArtistName and NumSongs in that order;
note that you will need to alias the columns to achieve this.(query33.sql)*/
 
SELECT Name, count(*)
    FROM (SELECT AlbumId, Name AS TrackName
            FROM Track
            WHERE Name LIKE "The%") NATURAL JOIN Album NATURAL JOIN Artist
    GROUP BY Name
    HAVING count(*) > 4
            
    
