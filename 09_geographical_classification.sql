ALTER TABLE pollution_data ADD COLUMN region_zone VARCHAR(50);

UPDATE pollution_data
SET region_zone = CASE
  WHEN state IN ('Andhra Pradesh', 'Telangana', 'Karnataka', 'Kerala', 'Tamil Nadu', 'Puducherry','Tamilnadu')
    THEN 'South'
  WHEN state IN ('Delhi', 'Haryana', 'Himachal Pradesh', 'Punjab', 'Jammu and Kashmir', 'Uttarakhand', 'Chandigarh','Uttar pradesh')
    THEN 'North'
  WHEN state IN ('Bihar', 'Jharkhand', 'Odisha', 'West Bengal')
    THEN 'East'
  WHEN state IN ('Goa', 'Gujarat', 'Maharashtra', 'Rajasthan', 'Dadra and Nagar Haveli and Daman and Diu')
    THEN 'West'
  WHEN state IN ('Madhya Pradesh', 'Chhattisgarh')
    THEN 'Central'
  WHEN state IN ('Assam', 'Arunachal Pradesh', 'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Sikkim', 'Tripura')
    THEN 'Northeast'
  WHEN state = 'Andaman and Nicobar Islands'
    THEN 'Islands'
  ELSE 'Unknown'
END;

ALTER TABLE pollution_data RENAME COLUMN state TO state_ut;
UPDATE pollution_data SET state_ut = 'Telangana' WHERE location = 'Hyderabad';
UPDATE pollution_data SET location_type = 'Tier 1 City' WHERE location = 'Hyderabad';
UPDATE pollution_data SET location = 'Rajamahendravaram' WHERE location = 'Rajahmundry/Rajamahend ravaram';
UPDATE pollution_data SET location_type = 'Tier 2 City' WHERE location IN ('Hatras','Pathankot');
UPDATE pollution_data SET location_type = 'Tier 3 city/town/village' WHERE location IN ('Buxar','Silvasa','Udhampur (J)','Samba (J)','Doda (J)');
UPDATE pollution_data SET location_type = 'Tier 3 city/town/village' WHERE location_type = 'Rajamahendravaram';
UPDATE pollution_data SET state_ut = 'Himachal Pradesh' WHERE state_ut = 'Himachalpradesh';
UPDATE pollution_data SET state_ut = 'Jammu and Kashmir' WHERE state_ut = '"Jammu &
Kashmir"
';

SELECT * FROM pollution_data WHERE year = 2020 AND region_zone = "North";