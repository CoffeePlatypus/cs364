/*******************************************************************************
List all albums with an eponymous track (i.e.,the album has a track named the
same thing as the album).Your output columns should be listed as Name and Title
in that order
********************************************************************************/
SELECT Name, Title
  FROM Album NATURAL JOIN Track
  WHERE Title = Name;
