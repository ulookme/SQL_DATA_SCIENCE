SELECT min(population_growth)
FROM facts;

SELECT max(death_rate)
FROM facts;

SELECT sum(birth_rate)
FROM facts;

SELECT avg(birth_rate)
FROM facts;

SELECT sum(area_land)
FROM facts;

SELECT avg(area_water)
FROM facts;

SELECT avg(population_growth)
FROM facts
WHERE population > 100000;

SELECT DISTINCT birth_rate
FROM facts;

SELECT avg( DISTINCT birth_rate)
FROM facts
WHERE population > 2000000;

SELECT  sum( DISTINCT population)
FROM facts
WHERE area_land > 3000000;

SELECT population/1000000.0
FROM facts;

SELECT population_growth/1000000.0
FROM facts;

SELECT avg(population ), avg(population_growth), avg(birth_rate), avg(death_rate)
FROM facts;

SELECT min(population), min(population_growth), min(birth_rate), min(death_rate)
FROM facts
WHERE population < 20000000000;

SELECT max(population), max(population_growth), max(birth_rate), max(death_rate)
FROM facts
WHERE population  <20000000000 ;

SELECT min(round(population + population * (population_growth/100), 0)),
max(round(population + population * (population_growth/100), 0)),
avg(round(population + population * (population_growth/100), 0))
FROM facts
WHERE population > 0 AND population < 70000000000
AND population IS NOT NULL AND population_growth IS NOT NULL ; 