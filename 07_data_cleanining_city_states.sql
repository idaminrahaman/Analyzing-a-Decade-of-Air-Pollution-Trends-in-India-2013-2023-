UPDATE pollution_data
SET location = 'Dehradun'
WHERE LOWER(location) IN ('dehradun**');
UPDATE pollution_data
SET state = 'West Bengal'
WHERE LOWER(location) IN (
        'chinsurah',
        'berhampore',
        'raiganj',
        'south 24 parganas'
    )
    AND LOWER(state) = 'uttarakhand';
UPDATE pollution_data
SET location = CASE
        WHEN LOWER(location) IN ('chitoor', 'chittor', 'chittoor') THEN 'Chittoor'
        WHEN LOWER(location) IN ('anatapur', 'anantapur') THEN 'Anantapur'
        WHEN LOWER(location) IN ('vijaywada', 'vijayawada') THEN 'Vijayawada'
        WHEN LOWER(location) IN (
            'vishakhapatnam',
            'vishakhapatna m',
            'vishakhapatn am',
            'visakhapatnam'
        ) THEN 'Visakhapatnam'
        WHEN LOWER(location) IN (
            'rajahmundry',
            'rajahmundry/ rajamahendra varam',
            'rajahmundry/ rajamahendrava ram',
            'rajahmundry/ rajamahendravaram'
        ) THEN 'Rajamahendravaram'
        ELSE location
    END
WHERE state = 'andhra pradesh';
UPDATE pollution_data
SET State = CASE
        WHEN State IN (
            'Andhra',
            'AndhraPradesh',
            'Andhra  Pradesh',
            'Andhra  Pradesh'
        ) THEN 'Andhra Pradesh'
        WHEN State IN ('Telengana', 'Telangana ') THEN 'Telangana'
        WHEN State IN ('Orissa', 'Odisha ', 'Odisha ') THEN 'Odisha'
        WHEN State IN ('Maharasht ra', 'Maharashtr a', 'Maharashtra ') THEN 'Maharashtra'
        WHEN State IN ('Uttarakha nd', 'Uttarakhan d', 'Uttarakhand ') THEN 'Uttarakhand'
        WHEN State IN ('Meghalay a', 'Meghalay', 'Meghalaya ') THEN 'Meghalaya'
        WHEN State IN ('Chattisgarh', 'Chattisgar h', 'Chhattisgarh ') THEN 'Chhattisgarh'
        WHEN State IN ('Gujara', 'Gujarat ') THEN 'Gujarat'
        WHEN State IN (
            'Chandigar h',
            'Chandigar',
            'Chandigarh (UT)',
            'Chandigarh '
        ) THEN 'Chandigarh'
        WHEN State IN (
            'Puducherr y',
            'Puducherry ',
            'Pondicherry',
            'Pondicherry (UT)'
        ) THEN 'Puducherry'
        WHEN State IN ('Daman &', 'Daman & Diu', 'Daman & Diu (UT)') THEN 'Daman and Diu'
        WHEN State IN (
            'Dadra & Nagar Haveli',
            'Dadra & Nagar Haveli and Daman & Diu',
            'Dadara & Nagar Haveli and Daman & Diu (UT)',
            'Daman and diu',
            'Nagar'
        ) THEN 'Dadra and Nagar Haveli and Daman and Diu'
        WHEN State IN ('Delhi', 'Delhi (UT)') THEN 'Delhi'
        WHEN State IN ('Jammu & Kashmir', 'Jammu & Kashmir (UT)') THEN 'Jammu and Kashmir'
        WHEN State IN ('Andaman & Nicobar', 'Andaman & Nicobar (UT)') THEN 'Andaman and Nicobar Islands'
        ELSE TRIM(State)
    END;
UPDATE pollution_data
SET State = 'Arunachal Pradesh'
WHERE location = 'Naharlagun';
UPDATE pollution_data
SET State = 'Arunachal Pradesh'
WHERE State = 'Arunachal';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Bongaigaon';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Daranga';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Dibrugarh';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Golaghat';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Guwahati';

UPDATE pollution_data
SET State = 'Telangana'
WHERE location = 'Hyderabad';
UPDATE pollution_data
SET State = 'Assam'
WHERE location = 'Margherita';
UPDATE pollution_data
SET State = 'Arunachal Pradesh'
WHERE location = 'Itanagar';
UPDATE pollution_data
SET State = 'Telangana'
WHERE location = 'Patencheru';
UPDATE pollution_data
SET State = 'Telangana'
WHERE location = 'Patancheru';
UPDATE pollution_data
SET location = 'Itanagar',
    State = 'Arunachal Pradesh'
WHERE location = 'Itnagar';
UPDATE pollution_data
SET State = 'Arunachal Pradesh'
WHERE location IN ('Itanagar', 'Naharlagun');
-- Correct spelling errors and assign proper states
-- Correct Sibsagar to Sivasagar (Assam)
UPDATE pollution_data
SET location = 'Sivasagar'
WHERE location = 'Sibsagar';
-- Correct Magherita to Margherita (Assam)
UPDATE pollution_data
SET location = 'Margherita'
WHERE location = 'Magherita';
-- Correct Silcher to Silchar (Assam)
UPDATE pollution_data
SET location = 'Silchar'
WHERE location = 'Silcher';
-- Correct Brynihat to Byrnihat and assign Meghalaya
UPDATE pollution_data
SET location = 'Byrnihat',
    State = 'Meghalaya'
WHERE location = 'Brynihat';
-- Update cities from Bihar
UPDATE pollution_data
SET State = 'Bihar'
WHERE location = 'Begusarai';
UPDATE pollution_data
SET State = 'Bihar'
WHERE location = 'Darbhanga';
UPDATE pollution_data
SET State = 'Bihar'
WHERE location = 'Gaya';
UPDATE pollution_data
SET State = 'Bihar'
WHERE location = 'Patna';
UPDATE pollution_data
SET location = 'Bodh Gaya'
WHERE location = 'Bodhgaya';
UPDATE pollution_data
SET location = 'Ara'
WHERE location = 'Arrah';
UPDATE pollution_data
SET location = 'Purnea'
WHERE location = 'Purnia';
-- Correct state updates
UPDATE pollution_data
SET State = 'Chandigarh'
WHERE location = 'Chandigarh';
UPDATE pollution_data
SET State = 'Chhattisgarh'
WHERE location = 'Bhilai';
UPDATE pollution_data
SET State = 'Chhattisgarh'
WHERE location = 'Bilaspur';
UPDATE pollution_data
SET State = 'Chhattisgarh'
WHERE location = 'Korba';
UPDATE pollution_data
SET State = 'Chhattisgarh'
WHERE location = 'Raipur';
UPDATE pollution_data
SET location = 'Bhilai'
WHERE location = 'Bhillai';
UPDATE pollution_data
SET location = 'Durg-Bhilainagar'
WHERE location IN ('Durg Bhillainagar', 'Durg-Bhillainagar');
-- Correct and update entries to the current official Union Territory name
UPDATE pollution_data
SET State = 'Dadra and Nagar Haveli and Daman and Diu'
WHERE location = 'Daman';
UPDATE pollution_data
SET State = 'Dadra and Nagar Haveli and Daman and Diu'
WHERE location = 'Silvassa';
UPDATE pollution_data
SET location = 'Baldevi',
    State = 'Dadra and Nagar Haveli and Daman and Diu'
WHERE location LIKE 'Baldevi%';
UPDATE pollution_data
SET location = 'Patlara',
    State = 'Dadra and Nagar Haveli and Daman and Diu'
WHERE location LIKE 'Patlara%';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Amona';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Assonora';
-- corrected spelling from 'Assanora'
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Bicholim';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Codli';
-- also known as 'Collem' (verify depending on dataset)
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Cuncolim';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Curchorem';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Honda';
UPDATE pollution_data
SET State = 'Goa'
WHERE location = 'Kundaim';
-- Normalization updates (same state: Goa)
UPDATE pollution_data
SET location = 'Panaji'
WHERE location IN ('Panjim');
UPDATE pollution_data
SET location = 'Mormugao'
WHERE location IN ('Marmagao', 'Mormugao');
UPDATE pollution_data
SET location = 'Vasco da Gama'
WHERE location IN ('Vasco');
UPDATE pollution_data
SET location = 'Curchorem'
WHERE location IN ('Curchoem');
UPDATE pollution_data
SET location = 'Codli'
WHERE location IN ('Codlie');
-- if any typo
UPDATE pollution_data
SET location = 'Assonora'
WHERE location IN ('Assanora');
UPDATE pollution_data
SET location = 'Usgao-Pale'
WHERE location IN ('Usgao', 'Usgao Pale');
UPDATE pollution_data
SET location = 'Cuncolim'
WHERE location IN ('cuncolim');
-- Ensure state consistency
UPDATE pollution_data
SET State = 'Goa'
WHERE location IN (
        'Panaji',
        'Mormugao',
        'Vasco da Gama',
        'Curchorem',
        'Codli',
        'Honda',
        'Bicholim',
        'Amona',
        'Assonora',
        'Usgao-Pale',
        'Margao',
        'Tilamol',
        'Mapusa',
        'Sanguem',
        'Ponda',
        'Kundaim',
        'Cuncolim',
        'Tuem'
    );
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Damtal';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Dharamshala';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Kala Amb';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Manali';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Nalagarh';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Paonta Sahib';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Parwanoo';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Shimla';
UPDATE pollution_data
SET State = 'Himachal Pradesh'
WHERE location = 'Sundernagar';
UPDATE pollution_data
SET location = 'Ankleshwar'
WHERE location IN ('Anklesvar', 'Ankleshwar');
UPDATE pollution_data
SET location = 'Naranpura'
WHERE location = 'Navarangpur';
UPDATE pollution_data
SET location = 'Hisar'
WHERE location = 'Hissar';
UPDATE pollution_data
SET location = 'Gurugram'
WHERE location = 'Gurgaon';
UPDATE pollution_data
SET location = 'Panchkula Urban Estate'
WHERE location = 'Panchukula Urban Estate';
UPDATE pollution_data
SET location = 'Sonipat'
WHERE location = 'Sonepat';
UPDATE pollution_data
SET location = 'Yamunanagar'
WHERE location IN ('Yamunanagar', 'Yamuna Nagar');
-- Ensure all belong to Haryana
UPDATE pollution_data
SET State = 'Haryana'
WHERE location IN (
        'Faridabad',
        'Hisar',
        'Yamunanagar',
        'Ambala',
        'Bahadurgarh',
        'Ballabgarh',
        'Bhiwani',
        'Charkhi Dadri',
        'Dharuhera',
        'Fatehabad',
        'Gurugram',
        'Jind',
        'Kaithal',
        'Karnal',
        'Kurukshetra',
        'Mandikhera',
        'Manesar',
        'Narnaul',
        'Palwal',
        'Panchkula Urban Estate',
        'Panipat',
        'Rohtak',
        'Sirsa',
        'Sonipat'
    );
UPDATE pollution_data
SET location = 'Paonta Sahib'
WHERE location IN ('Poanta Sahib', 'Paonta Saheb');
UPDATE pollution_data
SET location = 'Sundernagar'
WHERE location IN ('Sunder Nagar', 'Sundar Nagar');
-- Correct Jharkhand cities
UPDATE pollution_data
SET State = 'Jharkhand'
WHERE location = 'Dhanbad';
UPDATE pollution_data
SET State = 'Jharkhand'
WHERE location = 'Jamshedpur';
UPDATE pollution_data
SET State = 'Jharkhand'
WHERE location = 'Jharia';
UPDATE pollution_data
SET State = 'Jharkhand'
WHERE location = 'Ranchi';
UPDATE pollution_data
SET State = 'Jharkhand'
WHERE location = 'Seraikela';
-- Correct Jammu and Kashmir cities
UPDATE pollution_data
SET location = 'Pulwama',
    State = 'Jammu and Kashmir'
WHERE location IN ('Pulwama (K)', 'Pulwama');
UPDATE pollution_data
SET location = 'Srinagar',
    State = 'Jammu and Kashmir'
WHERE location IN ('Srinagar (K)', 'Srinagar');
UPDATE pollution_data
SET location = 'Ramban',
    State = 'Jammu and Kashmir'
WHERE location IN ('Ramban (J)', 'Ramban');
UPDATE pollution_data
SET location = 'Jammu',
    State = 'Jammu and Kashmir'
WHERE location = 'Jammu';
UPDATE pollution_data
SET location = 'Seraikela-Kharsawan',
    State = 'Jharkhand'
WHERE location = 'Saraikela Kharsawan';
UPDATE pollution_data
SET location = 'Seraikela',
    State = 'Jharkhand'
WHERE location = 'Saraikela';
-- Normalize and ensure state is Karnataka
UPDATE pollution_data
SET location = 'Bengaluru',
    State = 'Karnataka'
WHERE location IN ('Bangalore');
UPDATE pollution_data
SET location = 'Belagavi',
    State = 'Karnataka'
WHERE location IN ('Belgaum');
UPDATE pollution_data
SET location = 'Kalaburagi',
    State = 'Karnataka'
WHERE location IN ('Gulbarga', 'Gulburga');
UPDATE pollution_data
SET location = 'Hassan',
    State = 'Karnataka'
WHERE location IN ('Hassan');
UPDATE pollution_data
SET location = 'Mandya',
    State = 'Karnataka'
WHERE location IN ('Mandya');
UPDATE pollution_data
SET location = 'Mangaluru',
    State = 'Karnataka'
WHERE location IN ('Mangalore');
UPDATE pollution_data
SET location = 'Mysuru',
    State = 'Karnataka'
WHERE location IN ('Mysore');
UPDATE pollution_data
SET location = 'Davangere',
    State = 'Karnataka'
WHERE location IN ('Devanagere');
UPDATE pollution_data
SET location = 'Raichur',
    State = 'Karnataka'
WHERE location IN ('Raichur');
UPDATE pollution_data
SET location = 'Chitradurga',
    State = 'Karnataka'
WHERE location IN ('Chitradurga');
UPDATE pollution_data
SET location = 'Shivamogga',
    State = 'Karnataka'
WHERE location IN ('Shimaga', 'Shimoga');
UPDATE pollution_data
SET location = 'Kolar',
    State = 'Karnataka'
WHERE location IN ('Kolar');
UPDATE pollution_data
SET location = 'Bidar',
    State = 'Karnataka'
WHERE location IN ('Bidar');
UPDATE pollution_data
SET location = 'Hubballi-Dharwad',
    State = 'Karnataka'
WHERE location IN (
        'Hubli-Dharwad',
        'Hubli Dharwad',
        'Hubli',
        'Dharwad'
    );
UPDATE pollution_data
SET location = 'Vijayapura',
    State = 'Karnataka'
WHERE location IN ('Bijapur', 'Bijapur / Vijayapura');
UPDATE pollution_data
SET location = 'Tumakuru',
    State = 'Karnataka'
WHERE location IN ('Timukuru', 'Tumkuru');
UPDATE pollution_data
SET location = 'Bagalkote',
    State = 'Karnataka'
WHERE location IN ('Bagalkote');
UPDATE pollution_data
SET location = 'Karwar',
    State = 'Karnataka'
WHERE location IN ('Karwar');
UPDATE pollution_data
SET location = 'Chamarajanagar',
    State = 'Karnataka'
WHERE location IN ('Chamarajanagar');
UPDATE pollution_data
SET location = 'Chikkaballapur',
    State = 'Karnataka'
WHERE location IN ('Chikkaballapur');
UPDATE pollution_data
SET location = 'Chikkamagaluru',
    State = 'Karnataka'
WHERE location IN ('Chikkamagaluru');
UPDATE pollution_data
SET location = 'Gadag',
    State = 'Karnataka'
WHERE location IN ('Gadag');
UPDATE pollution_data
SET location = 'Koppal',
    State = 'Karnataka'
WHERE location IN ('Koppal');
UPDATE pollution_data
SET location = 'Madikeri',
    State = 'Karnataka'
WHERE location IN ('Madikeri');
UPDATE pollution_data
SET location = 'Ramanagara',
    State = 'Karnataka'
WHERE location IN ('Ramanagara');
UPDATE pollution_data
SET location = 'Udupi',
    State = 'Karnataka'
WHERE location IN ('Udupi');
UPDATE pollution_data
SET location = 'Yadgir',
    State = 'Karnataka'
WHERE location IN ('Yadgir');
UPDATE pollution_data
SET location = 'Haveri',
    State = 'Karnataka'
WHERE location IN ('Haveri');
-- Standardize location spellings and set correct state
UPDATE pollution_data
SET location = 'Alappuzha',
    State = 'Kerala'
WHERE location IN ('Alappuzha');
UPDATE pollution_data
SET location = 'Kochi',
    State = 'Kerala'
WHERE location IN ('Kochi');
UPDATE pollution_data
SET location = 'Kollam',
    State = 'Kerala'
WHERE location IN ('Kollam');
UPDATE pollution_data
SET location = 'Kottayam',
    State = 'Kerala'
WHERE location IN ('Kottayam');
UPDATE pollution_data
SET location = 'Kozhikode',
    State = 'Kerala'
WHERE location IN ('Kozhikode');
UPDATE pollution_data
SET location = 'Malappuram',
    State = 'Kerala'
WHERE location IN ('Malapuram', 'Mallappuram');
UPDATE pollution_data
SET location = 'Palakkad',
    State = 'Kerala'
WHERE location IN ('Palakkad');
UPDATE pollution_data
SET location = 'Thrissur',
    State = 'Kerala'
WHERE location IN ('Thissur', 'Thrisur', 'Thrissur');
UPDATE pollution_data
SET location = 'Wayanad',
    State = 'Kerala'
WHERE location IN ('Wayanad');
UPDATE pollution_data
SET location = 'Pathanamthitta',
    State = 'Kerala'
WHERE location IN (
        'Pathanamthitta',
        'Pathanamthitt a',
        'Pathanamthit ta'
    );
UPDATE pollution_data
SET location = 'Thiruvananthapuram',
    State = 'Kerala'
WHERE location IN (
        'Thiruvananthapuram',
        'Thiruvananth apuram',
        'Thiruvanantha puram',
        'Thiruvanantapuram',
        'Thiruvananth',
        'Thiruvananthapu ram'
    );
UPDATE pollution_data
SET location = 'Thiruvalla',
    State = 'Kerala'
WHERE location IN ('Thiruvalla');
UPDATE pollution_data
SET location = 'Eloor',
    State = 'Kerala'
WHERE location IN ('Eloor');
UPDATE pollution_data
SET location = 'Ernakulam',
    State = 'Kerala'
WHERE location IN ('Ernakulam');
UPDATE pollution_data
SET location = 'Kannur',
    State = 'Kerala'
WHERE location IN ('Kannur');
UPDATE pollution_data
SET location = 'Chhindwara'
WHERE location = 'Chindwara';
UPDATE pollution_data
SET location = 'Pithampur'
WHERE location = 'Prithampur';
UPDATE pollution_data
SET State = 'Madhya Pradesh'
WHERE location IN (
        'Bhopal',
        'Dewas',
        'Gwalior',
        'Indore',
        'Jabalpur',
        'Nagda',
        'Sagar',
        'Ujjain',
        'Satna',
        'Singrauli',
        'Chhindwara',
        'Amlai',
        'Pithampur',
        'Katni',
        'Damoh',
        'Maihar',
        'Mandideep',
        'Ratlam',
        'Rewa'
    );
-- Normalize location names (fix typos, remove duplicates, and ensure consistent formatting)
UPDATE pollution_data
SET location = 'Ambernath',
    State = 'Maharashtra'
WHERE location IN (
        'Am bernath',
        'Ambernath',
        'Dombivali/Ambernath',
        'Dombivali/A',
        'Dombivali / Kalyan',
        'Dombivali/Am bernath'
    );
UPDATE pollution_data
SET location = 'Dombivli',
    State = 'Maharashtra'
WHERE location IN ('Dombivali', 'Dombivali / Kalyan', 'Ulhas Nagar');
UPDATE pollution_data
SET location = 'Ulhasnagar',
    State = 'Maharashtra'
WHERE location IN ('Ulhas Nagar');
UPDATE pollution_data
SET location = 'Pimpri-Chinchwad',
    State = 'Maharashtra'
WHERE location IN ('Pimpri Chinchwad', 'Pimpri-Chinchwad');
UPDATE pollution_data
SET location = 'Vasai-Virar',
    State = 'Maharashtra'
WHERE location IN ('Vasai virar');
UPDATE pollution_data
SET location = 'Mira-Bhayandar',
    State = 'Maharashtra'
WHERE location IN ('Mira Bhayander');
UPDATE pollution_data
SET location = 'Malegaon',
    State = 'Maharashtra'
WHERE location IN ('Malegao');
UPDATE pollution_data
SET location = 'Boisar',
    State = 'Maharashtra'
WHERE location = 'Boisar';
UPDATE pollution_data
SET location = 'Roha',
    State = 'Maharashtra'
WHERE location = 'Roha';
UPDATE pollution_data
SET location = 'Tarapur',
    State = 'Maharashtra'
WHERE location = 'Tarapur';
UPDATE pollution_data
SET location = 'Belapur',
    State = 'Maharashtra'
WHERE location = 'Belapur';
UPDATE pollution_data
SET location = 'Mahad',
    State = 'Maharashtra'
WHERE location = 'Mahad';
UPDATE pollution_data
SET location = 'Ahmednagar',
    State = 'Maharashtra'
WHERE location = 'Ahmednagar';
UPDATE pollution_data
SET location = 'Amravati',
    State = 'Maharashtra'
WHERE location = 'Amravati';
UPDATE pollution_data
SET location = 'Aurangabad',
    State = 'Maharashtra'
WHERE location = 'Aurangabad';
UPDATE pollution_data
SET location = 'Badlapur',
    State = 'Maharashtra'
WHERE location = 'Badlapur';
UPDATE pollution_data
SET location = 'Chandrapur',
    State = 'Maharashtra'
WHERE location = 'Chandrapur';
UPDATE pollution_data
SET location = 'Jalgaon',
    State = 'Maharashtra'
WHERE location = 'Jalgaon';
UPDATE pollution_data
SET location = 'Kolhapur',
    State = 'Maharashtra'
WHERE location = 'Kolhapur';
UPDATE pollution_data
SET location = 'Latur',
    State = 'Maharashtra'
WHERE location = 'Latur';
UPDATE pollution_data
SET location = 'Lote',
    State = 'Maharashtra'
WHERE location = 'Lote';
UPDATE pollution_data
SET location = 'Mumbai',
    State = 'Maharashtra'
WHERE location = 'Mumbai';
UPDATE pollution_data
SET location = 'Nagpur',
    State = 'Maharashtra'
WHERE location = 'Nagpur';
UPDATE pollution_data
SET location = 'Nashik',
    State = 'Maharashtra'
WHERE location = 'Nashik';
UPDATE pollution_data
SET location = 'Navi Mumbai',
    State = 'Maharashtra'
WHERE location = 'Navi Mumbai';
UPDATE pollution_data
SET location = 'Pune',
    State = 'Maharashtra'
WHERE location = 'Pune';
UPDATE pollution_data
SET location = 'Sangli',
    State = 'Maharashtra'
WHERE location = 'Sangli';
UPDATE pollution_data
SET location = 'Solapur',
    State = 'Maharashtra'
WHERE location = 'Solapur';
UPDATE pollution_data
SET location = 'Thane',
    State = 'Maharashtra'
WHERE location = 'Thane';
UPDATE pollution_data
SET location = 'Jalna',
    State = 'Maharashtra'
WHERE location = 'Jalna';
UPDATE pollution_data
SET location = 'Akola',
    State = 'Maharashtra'
WHERE location = 'Akola';
UPDATE pollution_data
SET location = 'Nanded',
    State = 'Maharashtra'
WHERE location = 'Nanded';
UPDATE pollution_data
SET location = 'Bhiwandi',
    State = 'Maharashtra'
WHERE location = 'Bhiwandi';
UPDATE pollution_data
SET location = 'Dhule',
    State = 'Maharashtra'
WHERE location = 'Dhule';
UPDATE pollution_data
SET location = 'Parbhani',
    State = 'Maharashtra'
WHERE location = 'Parbhani';
UPDATE pollution_data
SET location = 'Byrnihat',
    State = 'Meghalaya'
WHERE location IN ('Byrnihat', 'Byraihat');
UPDATE pollution_data
SET location = 'Dawki',
    State = 'Meghalaya'
WHERE location = 'Dawki';
UPDATE pollution_data
SET location = 'Tura',
    State = 'Meghalaya'
WHERE location = 'Tura';
UPDATE pollution_data
SET location = 'Nongstoin',
    State = 'Meghalaya'
WHERE location = 'Nongstoin';
UPDATE pollution_data
SET location = 'Shillong',
    State = 'Meghalaya'
WHERE location = 'Shillong';
UPDATE pollution_data
SET location = 'Khliehriat',
    State = 'Meghalaya'
WHERE location IN ('khliehriat', 'Khlihriat');
UPDATE pollution_data
SET location = 'Umiam',
    State = 'Meghalaya'
WHERE location IN ('Umiam', 'Umaim');
UPDATE pollution_data
SET location = 'Umsning',
    State = 'Meghalaya'
WHERE location IN ('Umsning', 'Umiam / Umsning');
-- Correct spelling of Aizwal to Aizawl
UPDATE pollution_data
SET location = 'Aizawl'
WHERE location = 'Aizwal';
-- Correct spelling of Saiha to Siaha
UPDATE pollution_data
SET location = 'Siaha'
WHERE location = 'Saiha';
-- Ensure all these cities are correctly marked as part of Mizoram
UPDATE pollution_data
SET State = 'Mizoram'
WHERE location IN (
        'Aizawl',
        'Lunglei',
        'Kolasib',
        'Champhai',
        'Khatla',
        'Lawngtlai',
        'Lengpui',
        'Mamit',
        'Siaha',
        'Serchhip'
    );
-- Normalize and correct location spellings
UPDATE pollution_data
SET location = 'Bhubaneswar',
    State = 'Odisha'
WHERE location IN ('Bhubneshwar', 'Bhubaneshwar');
UPDATE pollution_data
SET location = 'Balasore',
    State = 'Odisha'
WHERE location = 'Balasore';
UPDATE pollution_data
SET location = 'Berhampur',
    State = 'Odisha'
WHERE location = 'Berhampur';
UPDATE pollution_data
SET location = 'Puri',
    State = 'Odisha'
WHERE location = 'Puri';
UPDATE pollution_data
SET location = 'Cuttack',
    State = 'Odisha'
WHERE location = 'Cuttack';
UPDATE pollution_data
SET location = 'Rayagada',
    State = 'Odisha'
WHERE location = 'Rayagada';
UPDATE pollution_data
SET location = 'Paradeep',
    State = 'Odisha'
WHERE location = 'Paradeep';
UPDATE pollution_data
SET location = 'Rourkela',
    State = 'Odisha'
WHERE location = 'Rourkela';
UPDATE pollution_data
SET location = 'Sambalpur',
    State = 'Odisha'
WHERE location = 'Sambalpur';
UPDATE pollution_data
SET location = 'Talcher',
    State = 'Odisha'
WHERE location = 'Talcher';
UPDATE pollution_data
SET location = 'Konark',
    State = 'Odisha'
WHERE location = 'Konark';
UPDATE pollution_data
SET location = 'Kalinga Nagar',
    State = 'Odisha'
WHERE location = 'Kalinga Nagar';
UPDATE pollution_data
SET location = 'Jharsuguda',
    State = 'Odisha'
WHERE location = 'Jharsuguda';
UPDATE pollution_data
SET location = 'Bonaigarh',
    State = 'Odisha'
WHERE location = 'Bonaigarh';
UPDATE pollution_data
SET location = 'Rajgangpur',
    State = 'Odisha'
WHERE location = 'Rajgangpur';
UPDATE pollution_data
SET location = 'Brajrajnagar',
    State = 'Odisha'
WHERE location = 'Brajrajnagar';
UPDATE pollution_data
SET location = 'Baripada',
    State = 'Odisha'
WHERE location = 'Baripada';
UPDATE pollution_data
SET location = 'Bileipada',
    State = 'Odisha'
WHERE location = 'Bileipada';
UPDATE pollution_data
SET location = 'Keonjhar',
    State = 'Odisha'
WHERE location = 'Keonjhar';
UPDATE pollution_data
SET location = 'Nayagarh',
    State = 'Odisha'
WHERE location = 'Nayagarh';
UPDATE pollution_data
SET location = 'Rairangpur',
    State = 'Odisha'
WHERE location = 'Rairangpur';
UPDATE pollution_data
SET location = 'Suakati',
    State = 'Odisha'
WHERE location = 'Suakati';
UPDATE pollution_data
SET location = 'Tensa',
    State = 'Odisha'
WHERE location = 'Tensa';
UPDATE pollution_data
SET location = 'Angul',
    State = 'Odisha'
WHERE location = 'Angul';
-- Puducherry Union Territory
UPDATE pollution_data
SET State = 'Puducherry'
WHERE location IN ('Pondicherry', 'Karaikal');
-- Punjab State
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Amritsar';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Aspal Khurd (Tapa)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Bara Pind (Goraya)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Bathinda';
-- normalized from 'Bhatinda'
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Binjon (Garhshankar)';
-- corrected spelling
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Bishanpura (Payal)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Changal (Sangrur)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Dera Baba Nanak';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Dera Bassi';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Fatehpur (Samana)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Gobindgarh';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Guru Ki Dhab (Kotkapura)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Jaito Sarja (Batala)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Jalandhar';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Kharauri (Sirhind)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Kot Ladoom (Ajnala)';
-- normalized from Kotladoom
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Ludhiana';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Mukandpur (Nawanshahr)';
-- normalized from Nawashahar
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Muridke (Batala)';
-- normalized from Mureedke
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Naudhrani (Malerkotla)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Naya Nangal';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Patiala';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Rakhra (Patiala)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Rohila (Samrala)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Qila Bharian (Sangrur)';
UPDATE pollution_data
SET State = 'Punjab'
WHERE location = 'Tirathpur (Amritsar I)';
-- Normalize inconsistent or misspelled location names to official forms
UPDATE pollution_data
SET location = 'Dera Baba Nanak',
    State = 'Punjab'
WHERE location IN (
        'Pathankot/Dera Baba',
        'Pathankot/Der a Baba',
        'Pathankot/De ra Baba'
    );
UPDATE pollution_data
SET location = 'Chowkimann (Jagraon)',
    State = 'Punjab'
WHERE location IN ('Chowkimann (Jagraon)*', 'Chowkimann (Jagraon)');
UPDATE pollution_data
SET location = 'Guru Ki Dhab (Kotkapura)',
    State = 'Punjab'
WHERE location IN (
        'Guru Ki Dhab (Kotkapura)*',
        'Guru Ki Dhab (Kotkapura)'
    );
UPDATE pollution_data
SET location = 'Mrar Kalan (Muktsar)',
    State = 'Punjab'
WHERE location IN ('Mrar Kalan (Muktsar)*', 'Mrar Kalan (Muktsar)');
UPDATE pollution_data
SET location = 'Mukandpur (Nawanshahr)',
    State = 'Punjab'
WHERE location IN (
        'Mukandpur (Nawashahar)*',
        'Mukandpur (Nawashahar)'
    );
UPDATE pollution_data
SET location = 'Naudhrani (Malerkotla)',
    State = 'Punjab'
WHERE location IN (
        'Naudhrani (Malerkotla)*',
        'Naudhrani (Malerkotla)'
    );
UPDATE pollution_data
SET location = 'Qila Bharian (Sangrur)',
    State = 'Punjab'
WHERE location IN (
        'Qila Bharian (Sangrur)*',
        'Qila Bharian (Sangrur)'
    );
UPDATE pollution_data
SET location = 'Aligarh (Jagraon)',
    State = 'Punjab'
WHERE location IN ('Aligarh (Jagraon)*', 'Aligarh (Jagraon)');
UPDATE pollution_data
SET location = 'Aspal Khurd (Tapa)',
    State = 'Punjab'
WHERE location IN ('Aspal Khurd (Tapa)*', 'Aspal Khurd (Tapa)');
UPDATE pollution_data
SET location = 'Binjon (Garhshankar)',
    State = 'Punjab'
WHERE location IN ('Binjon (Garshankar)*', 'Binjon (Garshankar)');
UPDATE pollution_data
SET location = 'Bishanpura (Payal)',
    State = 'Punjab'
WHERE location IN ('Bishanpura (Payal)*', 'Bishanpura (Payal)');
UPDATE pollution_data
SET location = 'Changal (Sangrur)',
    State = 'Punjab'
WHERE location IN ('Changal (Sangrur)*', 'Changal (Sangrur)');
UPDATE pollution_data
SET location = 'Fatehpur (Samana)',
    State = 'Punjab'
WHERE location IN ('Fatehpur (Samana)*', 'Fatehpur (Samana)');
UPDATE pollution_data
SET location = 'Jaito Sarja (Batala)',
    State = 'Punjab'
WHERE location IN ('Jaito Sarja (Batala)*', 'Jaito Sarja (Batala)');
UPDATE pollution_data
SET location = 'Kharauri (Sirhind)',
    State = 'Punjab'
WHERE location IN ('Kharaori (Sirhind)*', 'Kharaori (Sirhind)');
UPDATE pollution_data
SET location = 'Kotladoom (Ajnala)',
    State = 'Punjab'
WHERE location IN ('Kotladoom (Ajnala)*', 'Kotladoom (Ajnala)');
UPDATE pollution_data
SET location = 'Lakho ke Behram (Firozpur)',
    State = 'Punjab'
WHERE location IN (
        'Lakho ke Behram (Ferozpur)*',
        'Lakho ke Behram (Ferozpur)'
    );
UPDATE pollution_data
SET location = 'Mureedke (Batala)',
    State = 'Punjab'
WHERE location IN ('Mureedke (Batala)*', 'Mureedke (Batala)');
UPDATE pollution_data
SET location = 'Peer Mohammad (Jalalabad)',
    State = 'Punjab'
WHERE location IN (
        'Peer Mohammad (Jalalabad)*',
        'Peer Mohammad (Jalalabad)'
    );
UPDATE pollution_data
SET location = 'Poohli (Bathinda)',
    State = 'Punjab'
WHERE location IN ('Poohli (Bhatinda)*', 'Poohli (Bhatinda)');
UPDATE pollution_data
SET location = 'Rakhra (Patiala)',
    State = 'Punjab'
WHERE location IN ('Rakhra (Patiala)*', 'Rakhra (Patiala)');
UPDATE pollution_data
SET location = 'Rohila (Samrala)',
    State = 'Punjab'
WHERE location IN ('Rohila (Samrala)*', 'Rohila (Samrala)');
UPDATE pollution_data
SET location = 'Tirathpur (Amritsar I)',
    State = 'Punjab'
WHERE location IN (
        'Tirathpur (Amritsar I)*',
        'Tirathpur (Amritsar I)'
    );
-- Normalize common district-level names
UPDATE pollution_data
SET location = 'Bathinda',
    State = 'Punjab'
WHERE location IN ('Bhatinda');
UPDATE pollution_data
SET location = 'Firozpur',
    State = 'Punjab'
WHERE location IN ('Ferozpur');
UPDATE pollution_data
SET location = 'Malerkotla',
    State = 'Punjab'
WHERE location IN ('Malerkota');
UPDATE pollution_data
SET location = 'Sahibzada Ajit Singh Nagar (Mohali)',
    State = 'Punjab'
WHERE location IN ('Mohali');
UPDATE pollution_data
SET location = 'Shaheed Bhagat Singh Nagar',
    State = 'Punjab'
WHERE location IN ('SBS nagar');
-- Correct location names and ensure state consistency
UPDATE pollution_data
SET location = 'Alwar',
    State = 'Rajasthan'
WHERE location IN ('Alwar', 'Alwar**');
UPDATE pollution_data
SET State = 'Rajasthan'
WHERE location IN (
        'Jaipur',
        'Jodhpur',
        'Kota',
        'Udaipur',
        'Bharatpur',
        'Bhiwadi',
        'Chittorgarh',
        'Ajmer',
        'Pali',
        'Sri Ganganagar',
        'Tonk',
        'Banswara',
        'Baran',
        'Barmer',
        'Bhilwara',
        'Bikaner',
        'Bundi',
        'Churu',
        'Dausa',
        'Dholpur',
        'Dungarpur',
        'Hanumangarh',
        'Jaisalmer',
        'Jalore',
        'Jhalawar',
        'Jhunjhunu',
        'Karauli',
        'Nagaur',
        'Pratapgarh',
        'Rajsamand',
        -- Corrected from Rajasmand
        'Sawai Madhopur',
        'Sikar',
        'Sirohi'
    );
-- Fix known misspellings
UPDATE pollution_data
SET location = 'Chittorgarh'
WHERE location IN ('Chittorgargh');
UPDATE pollution_data
SET location = 'Rajsamand'
WHERE location IN ('Rajasmand');
-- Normalize location names and confirm Tamil Nadu state
UPDATE pollution_data
SET location = 'Thoothukudi',
    State = 'Tamil Nadu'
WHERE location IN ('Tuticorin', 'Tuticorin / Thoothukudi');
UPDATE pollution_data
SET location = 'Tiruchirappalli',
    State = 'Tamil Nadu'
WHERE location = 'Trichy';
UPDATE pollution_data
SET location = 'Gummidipundi',
    State = 'Tamil Nadu'
WHERE location = 'Gummidipoondi';
UPDATE pollution_data
SET location = 'Nagercoil',
    State = 'Tamil Nadu'
WHERE location IN ('Nagarcoil');
UPDATE pollution_data
SET location = 'Sivaganga',
    State = 'Tamil Nadu'
WHERE location = 'Sivagangai';
UPDATE pollution_data
SET location = 'Viluppuram',
    State = 'Tamil Nadu'
WHERE location = 'Villupuram';
UPDATE pollution_data
SET location = 'Udhagamandalam',
    State = 'Tamil Nadu'
WHERE location = 'Ooty';
UPDATE pollution_data
SET location = 'Tiruppur',
    State = 'Tamil Nadu'
WHERE location = 'Tirupur';
UPDATE pollution_data
SET location = 'Ariyalur',
    State = 'Tamil Nadu'
WHERE location = 'Ariyalura';
UPDATE pollution_data
SET location = 'Kancheepuram',
    State = 'Tamil Nadu'
WHERE location = 'Kanchipuram';
-- Ensure all listed cities are set to Tamil Nadu
UPDATE pollution_data
SET State = 'Tamil Nadu'
WHERE location IN (
        'Chennai',
        'Coimbatore',
        'Madurai',
        'Salem',
        'Thoothukudi',
        'Tiruchirappalli',
        'Mettur',
        'Cuddalore',
        'Dharmapuri',
        'Gummidipundi',
        'Nagercoil',
        'Perambalur',
        'Sivaganga',
        'Theni',
        'Tiruvannamalai',
        'Tiruvarur',
        'Viluppuram',
        'Udhagamandalam',
        'Palkalaiperur',
        'Ramanathapuram',
        'Tiruppur',
        'Vellore',
        'Ariyalur',
        'Chengalpattu',
        'Dindigul',
        'Hosur',
        'Kancheepuram'
    );
UPDATE pollution_data
SET State = 'Telangana'
WHERE location IN (
        'Hyderabad',
        'Karimnagar',
        'Khammam',
        'Nalgonda',
        'Nizamabad',
        'Ramagundam',
        'Warangal',
        'Adilabad',
        'Gaddapotharam',
        'RC Puram',
        'Patancheru',
        'Sangareddy',
        'Kothur',
        'Choutuppal'
    );
-- Standardize all cities to Uttar Pradesh
UPDATE pollution_data
SET State = 'Uttar Pradesh'
WHERE location IN (
        'Agra',
        'Prayagraj',
        'Anpara',
        'Bareilly',
        'Firozabad',
        'Gajraula',
        'Ghaziabad',
        'Jhansi',
        'Kanpur',
        'Khurja',
        'Lucknow',
        'Meerut',
        'Moradabad',
        'Noida',
        'Varanasi',
        'Unnao',
        'Rae Bareli',
        'Gorakhpur',
        'Saharanpur',
        'Mathura',
        'Baghpat',
        'Greater Noida',
        'Hapur',
        'Muzaffarnagar',
        'Aligarh',
        'Ayodhya',
        'Bulandshahr',
        'Vrindavan'
    );
-- Fix location name normalizations
UPDATE pollution_data
SET location = 'Prayagraj'
WHERE location = 'Allahabad';
UPDATE pollution_data
SET location = 'Bareilly'
WHERE location IN ('Bareily', 'Bareilly');
UPDATE pollution_data
SET location = 'Gajraula'
WHERE location IN ('Gajroula', 'Gajraula');
UPDATE pollution_data
SET location = 'Gorakhpur'
WHERE location IN ('Gorakpur', 'Gorakhpur');
UPDATE pollution_data
SET location = 'Rae Bareli'
WHERE location IN ('Raebareli', 'Raibareli', 'Raebareilly');
UPDATE pollution_data
SET location = 'Firozabad'
WHERE location LIKE 'Firozabad%';
UPDATE pollution_data
SET location = 'Agra'
WHERE location LIKE 'Agra%';
UPDATE pollution_data
SET location = 'Mathura'
WHERE location LIKE 'Mathura%';

UPDATE pollution_data
SET location = 'Hyderabad'
WHERE location LIKE 'Hydrabad';
UPDATE pollution_data
SET location = 'Baghpat'
WHERE location IN ('Bagpat', 'Baghpat');
-- ✅ Cities in Uttarakhand
UPDATE pollution_data
SET State = 'Uttarakhand'
WHERE location IN (
        'Dehradun',
        'Haridwar',
        'Rishikesh',
        'Haldwani',
        'Kashipur',
        'Rudrapur'
    );
-- ✅ Cities in West Bengal (with normalized spellings)
UPDATE pollution_data
SET State = 'West Bengal'
WHERE location IN (
        'Bankura',
        'Bolpur',
        'Rampurhat',
        'Suri',
        'Cooch Behar',
        'Balurghat',
        'Darjeeling',
        'Siliguri',
        'Chinsurah',
        'Dankuni',
        'Rishra',
        'Tribeni',
        'Howrah',
        'Sankrail',
        'Uluberia',
        'Jalpaiguri',
        'Kolkata',
        'Malda',
        'Berhampore',
        'Kalyani',
        'Ranaghat',
        'Krishnanagar',
        'Barasat',
        'Barrackpore',
        'Asansol',
        'Durgapur',
        'Ghatal',
        'Kharagpur',
        'Medinipur',
        'Haldia',
        'Tamluk',
        'Purulia',
        'Raiganj',
        'Raniganj',
        'South 24 Parganas'
    );
-- 🧹 Normalization / typo corrections
UPDATE pollution_data
SET location = 'Cooch Behar'
WHERE location IN ('Coochbehar');
UPDATE pollution_data
SET location = 'Berhampore'
WHERE location IN ('Baharampur');
UPDATE pollution_data
SET location = 'Chinsurah'
WHERE location IN ('Chinsura');
UPDATE pollution_data
SET location = 'Raiganj'
WHERE location IN ('Raigun');
UPDATE pollution_data
SET location = 'South 24 Parganas'
WHERE location IN ('South Suburban');
-- Correct spelling and set all to West Bengal
UPDATE pollution_data
SET location = 'Barrackpore',
    State = 'West Bengal'
WHERE location IN ('Barrckpore');
UPDATE pollution_data
SET location = 'Cooch Behar',
    State = 'West Bengal'
WHERE location IN ('Coochbehar', 'Coochbehar');
UPDATE pollution_data
SET location = 'English Bazar',
    State = 'West Bengal'
WHERE location IN ('English Bazaar/Malda');
UPDATE pollution_data
SET location = 'Alipurduar',
    State = 'West Bengal'
WHERE location IN ('Makhrapara /Alipurduar');
UPDATE pollution_data
SET location = 'Asansol-Raniganj',
    State = 'West Bengal'
WHERE location IN ('Asansol+Raniganj');
UPDATE pollution_data
SET location = 'Bansberia-Tribeni',
    State = 'West Bengal'
WHERE location IN ('Bansberia (Tribeni)');
-- Set state for all listed cities to West Bengal
UPDATE pollution_data
SET State = 'West Bengal'
WHERE location IN (
        'Asansol',
        'Barrackpore',
        'Durgapur',
        'Haldia',
        'Howrah',
        'Kolkata',
        'Raniganj',
        'South Suburban',
        'Sankrail',
        'Alipurduar',
        'Amtala',
        'Baharampur',
        'Balurghat',
        'Bankura',
        'Barasat',
        'Bardhaman',
        'Baruipur',
        'Bolpur',
        'Chinsura',
        'Cooch Behar',
        'Dankuni',
        'Darjeeling',
        'Ghatal',
        'Jalpaiguri',
        'Jhargram',
        'Kalimpong',
        'Kalyani',
        'Kharagpur',
        'Krishnanagar',
        'Malda',
        'Medinipur',
        'Purulia',
        'Raigunj',
        'Rampurhat',
        'Ranaghat',
        'Rishra',
        'Siliguri',
        'Suri',
        'Tamluk',
        'Tribeni',
        'Uluberia',
        'Madhyamgram',
        'Birpara',
        'Jaigaon',
        'Uttarpara',
        'Asansol-Raniganj',
        'Bansberia-Tribeni',
        'English Bazar'
    );
UPDATE pollution_data
SET state = 'Tamilnadu'
WHERE state = 'Tamil nadu';
UPDATE pollution_data
SET location = 'Hubballi-Dharwad'
WHERE location IN (
        'Hubli-',
        'Hubli',
        'Hubballi',
        'Hubballi-Dharwad'
    );
UPDATE pollution_data
SET state = 'West Bengal'
WHERE location IN (
        'Berhampore',
        'Raiganj',
        'South 24 Parganas',
        'Chinsurah'
    );
UPDATE pollution_data
SET location = 'Thiruvananthapuram'
WHERE location = 'apuram';

--------------End of Script--------------------------------------