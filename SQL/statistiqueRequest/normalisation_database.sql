SELECT  year, host, category, nominee, movie, character, won 
FROM ceremonies
INNER JOIN nominations
ON nominations.ceremony_id==ceremonies.id;

SELECT movie 
FROM nominations
INNER JOIN ceremonies
ON nominations.ceremony_id == ceremonies.id
WHERE ceremonies.year == "2010" AND nominations.won == 1;

SELECT ceremonies.year, nominations.movie 
FROM nominations
INNER JOIN ceremonies
ON ceremonies.id == nominations.ceremony_id
WHERE nominations.nominee=="Natalie Portman";