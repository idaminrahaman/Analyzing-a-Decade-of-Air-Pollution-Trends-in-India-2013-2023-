-- Active: 1756533320549@@localhost@3306@pollution_db
DELETE FROM pollution_data
WHERE location REGEXP '^$';
DELETE FROM pollution_data
WHERE state REGEXP '^$';
UPDATE pollution_data
SET State = TRIM(REPLACE(REPLACE(State, '\r', ''), '\n', ' '));
UPDATE pollution_data
SET State = CONCAT(
        UCASE(LEFT(State, 1)),
        LCASE(SUBSTRING(State, 2))
    );
UPDATE pollution_data
SET state = 'Tamilnadu'
WHERE state = 'Tamil Nadu';
UPDATE pollution_data
SET so2 = NULL
WHERE so2 = '';
UPDATE pollution_data
SET no2 = NULL
WHERE no2 = '';
UPDATE pollution_data
SET pm10 = NULL
WHERE pm10 = '';
UPDATE pollution_data
SET pm25 = NULL
WHERE pm25 REGEXP '^$';
UPDATE pollution_data
SET so2 = NULL
WHERE so2 REGEXP '^$';
UPDATE pollution_data
SET no2 = NULL
WHERE no2 REGEXP '^$';
UPDATE pollution_data
SET pm10 = NULL
WHERE pm10 REGEXP '^$';
ALTER TABLE pollution_data
MODIFY COLUMN so2 FLOAT;
ALTER TABLE pollution_data
MODIFY COLUMN no2 FLOAT;
ALTER TABLE pollution_data
MODIFY COLUMN pm10 FLOAT;
ALTER TABLE pollution_data
MODIFY COLUMN pm25 FLOAT;