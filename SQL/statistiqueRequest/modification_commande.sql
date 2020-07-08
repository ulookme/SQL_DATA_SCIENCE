PRAGMA table_info(facts) ;

--INSERT INTO  facts
--VALUES (.....);


SELECT * 
FROM facts
WHERE area IS NULL;

UPDATE facts
SET name = "New Zeland", code="nz"
WHERE name="Australia" AND population= 400000;

DELETE FROM facts
WHERE name = " Canada";


