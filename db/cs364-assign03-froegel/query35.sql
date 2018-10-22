-- List the names and totalnumber of albums of artists who had more albums than the Foo Fighters.
-- Your output columns should be listed as ArtistName and NumAlbums in that order;
-- note that you will need to alias the columns to achieve this.(query35.sql)

SELECT Name, count(*)
    FROM Artist NATURAL JOIN ALBUM
    GROUP BY Name
    HAVING count(*) > (SELECT count(*)
                        FROM Artist NATURAL JOIN Album
                        WHERE Name = 'Foo Fighters')
                        

    
