DROP DATABASE IF EXISTS pollution_db;
CREATE DATABASE pollution_db;
USE pollution_db;
DROP TABLE IF EXISTS pollution_data;
CREATE TABLE pollution_data (
    id INT PRIMARY KEY,
    Year INT,
    state VARCHAR(100),
    location VARCHAR(100),
    so2 VARCHAR(20),
    no2 VARCHAR(20),
    pm10 VARCHAR(20),
    pm25 VARCHAR(20)
);
