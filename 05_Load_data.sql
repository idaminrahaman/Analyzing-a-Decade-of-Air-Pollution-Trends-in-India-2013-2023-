LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/compiled_csv.csv'
INTO TABLE pollution_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, Year, State, location, so2, no2, pm10, pm25);


