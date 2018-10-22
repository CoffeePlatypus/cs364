/*******************************************************************************
List the names and lengths(in seconds,1 second=1000ms)of tracks that are of
the metal genre.Your output columns should be listed as Name and Length Seconds;
notice that you will need to alias attribues to achieve this.
********************************************************************************/
SELECT t.Name, Milliseconds / 1000
  FROM Track AS t JOIN Genre AS g
    ON t.GenreID = g.GenreID
  WHERE g.Name = 'Metal';
