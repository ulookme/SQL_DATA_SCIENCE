--PRAGMA table_info(facts) ;




SELECT * 
FROM facts
WHERE area IS NULL;

UPDATE facts
SET name = "New Zeland", code="nz"
WHERE name="Australia" AND population= 400000;

DELETE FROM facts
WHERE name = " Canada";

ALTER  TABLE  facts
DROP COLUMN awesomenes;

CREATE TABLE leader( id INTEGER PRIMARY KEY, name TEXT, country TEXT);


--CREATE TABLE leader( id INTEGER PRIMARY KEY, name TEXT, country TEXT);

INSERT INTO leader
VALUES (1, "Barack Obama", "United States");


CREATE TABLE leader2( id interger PRIMARY KEY, name TEXT, country INTEGER, worht float,  FOREIGN KEY(country) REFERENCES facts(id));

CREATE TABLE  state ( id interger PRIMARY KEY, name TEXT, area INTEGER, country INTEGER, worht float,  FOREIGN KEY(country) REFERENCES facts(id));

SELECT * 
FROM state
INNER JOIN facts
ON state.country== facts.id;

SELECT * 
FROM landmarks
INNER JOIN facts
ON landmarks.country== facts.id;

SELECT * 
FROM landmarks
LEFT OUTER JOIN facts
ON landmarks.country== facts.id;

SELECT * 
FROM landmarks
LEFT OUTER JOIN facts
ON landmarks.country== facts.id;
