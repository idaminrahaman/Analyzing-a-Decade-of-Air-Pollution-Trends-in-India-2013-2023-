ALTER TABLE pollution_data
ADD COLUMN location_type VARCHAR(100);
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'visakhapatnam',
            'vijayawada',
            'guntur',
            'tirupati',
            'kakinada',
            'rajamahendravaram',
            'nellore',
            'kurnool'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'chittoor',
            'anantapur',
            'kadapa',
            'prakasam',
            'srikakulam',
            'vizianagaram',
            'eluru',
            'ongole',
            'amaravati'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'andhra pradesh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('hyderabad') THEN 'Tier 1 City'
        WHEN location IN (
            'warangal',
            'karimnagar',
            'nizamabad',
            'khammam',
            'ramagundam',
            'ramagundum'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'nalgonda',
            'adilabad',
            'adilabad district',
            'sangareddy',
            'patancheru',
            'patencheru',
            'rc puram',
            'r.c.puram',
            'rc puram / patencheru',
            'kothur',
            'choutuppal',
            'choutupal',
            'gaddapotharam',
            'gaddapotharam medak district'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'telangana';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('guwahati', 'dibrugarh', 'silchar') THEN 'Tier 2 City'
        WHEN location IN (
            'bongaigaon',
            'daranga',
            'golaghat',
            'margherita',
            'lakhimpur',
            'north lakhimpur',
            'nagaon',
            'nalbari',
            'sivasagar',
            'tezpur',
            'tinsukia'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'assam';
UPDATE pollution_data
SET location_type = 'Tier 1 City'
WHERE location = 'Delhi';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('panaji', 'margao', 'vasco da gama') THEN 'Tier 2 City'
        WHEN location IN (
            'mormugao',
            'curchorem',
            'codli',
            'honda',
            'bicholim',
            'amona',
            'assonora',
            'usgao-pale',
            'tilamol',
            'mapusa',
            'sanguem',
            'ponda',
            'kundaim',
            'cuncolim',
            'tuem'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'goa';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('ahmedabad') THEN 'Tier 1 City'
        WHEN location IN (
            'surat',
            'vadodara',
            'rajkot',
            'jamnagar',
            'gandhinagar'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'vapi',
            'ankleshwar',
            'nandesari',
            'naranpura',
            'saraspur',
            'vatva',
            'sundernagar'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'gujarat';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'faridabad',
            'gurugram',
            'panipat',
            'ambala',
            'karnal',
            'hisar',
            'rohtak',
            'sonipat',
            'panchkula urban estate'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'bahadurgarh',
            'ballabgarh',
            'bhiwani',
            'charkhi dadri',
            'dharuhera',
            'fatehabad',
            'jind',
            'kaithal',
            'kurukshetra',
            'mandikhera',
            'manesar',
            'narnaul',
            'palwal',
            'sirsa',
            'yamunanagar'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'haryana';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('shimla') THEN 'Tier 2 City'
        WHEN location IN (
            'baddi',
            'nalagarh',
            'kala amb',
            'paonta sahib',
            'parwanoo',
            'damtal',
            'una',
            'sundernagar',
            'manali',
            'dharamshala',
            'gulaba',
            'marhi',
            'vashisht'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'himachal pradesh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('jammu', 'srinagar') THEN 'Tier 2 City'
        WHEN location IN ('pulwama', 'ramban') THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state IN (
        'jammu and kashmir',
        'jammu & kashmir',
        'jammu kashmir'
    );
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('ranchi', 'jamshedpur', 'dhanbad') THEN 'Tier 2 City'
        WHEN location IN (
            'jharia',
            'sindri',
            'seraikela-kharsawan',
            'west singhbhum',
            'barajamda',
            'seraikela',
            'jorapokhar'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'jharkhand';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('bengaluru', 'bangalore') THEN 'Tier 1 City'
        WHEN location IN (
            'mysuru',
            'mysore',
            'mangaluru',
            'mangalore',
            'hubballi-dharwad',
            'hubballi',
            'hubli-dharwad',
            'belagavi',
            'belgaum',
            'kalaburagi',
            'gulbarga',
            'davangere',
            'tumakuru',
            'tumkur',
            'shivamogga',
            'shimoga',
            'udupi'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'bagalkote',
            'bidar',
            'chamarajanagar',
            'chikkaballapur',
            'chikkamagaluru',
            'chitradurga',
            'gadag',
            'Gulbarga / Kalaburgi',
            'hassan',
            'haveri',
            'Hubballi-Dharwad',
            'karwar',
            'kolar',
            'koppal',
            'madikeri',
            'mandya',
            'raichur',
            'ramanagara',
            'Shimaga / Shivamogga',
            'vijayapura',
            'yadgir'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'karnataka';
UPDATE pollution_data
SET location_type = CASE
        WHEN location = 'Thiruvananthapuram' THEN 'Tier 1 City'
        WHEN location IN (
            'kochi',
            'cochin',
            'thiruvananthapuram',
            'trivandrum',
            'kozhikode',
            'calicut'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'alappuzha',
            'alleppey',
            'kollam',
            'quilon',
            'kottayam',
            'malappuram',
            'palakkad',
            'thrissur',
            'wayanad',
            'pathanamthitta',
            'thiruvalla',
            'eloor',
            'ernakulam',
            'kannur'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'kerala';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('bhopal', 'indore', 'gwalior', 'jabalpur') THEN 'Tier 2 City'
        WHEN location IN (
            'dewas',
            'nagda',
            'sagar',
            'ujjain',
            'satna',
            'singrauli',
            'chhindwara',
            'amlai',
            'pithampur',
            'katni',
            'damoh',
            'maihar',
            'mandideep',
            'ratlam',
            'rewa'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'madhya pradesh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('aizawl') THEN 'Tier 2 City'
        WHEN location IN (
            'lunglei',
            'kolasib',
            'champhai',
            'khatla',
            'lawngtlai',
            'lengpui',
            'mamit',
            'siaha',
            'serchhip'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'mizoram';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('dimapur', 'kohima') THEN 'Tier 2 City'
        ELSE location_type
    END
WHERE state = 'nagaland';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'bhubaneswar',
            'cuttack',
            'rourkela',
            'berhampur',
            'sambalpur'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'angul',
            'balasore',
            'puri',
            'rayagada',
            'paradeep',
            'talcher',
            'konark',
            'kalinga nagar',
            'jharsuguda',
            'bonaigarh',
            'rajgangpur',
            'brajrajnagar',
            'baripada',
            'bileipada',
            'keonjhar',
            'nayagarh',
            'rairangpur',
            'suakati',
            'tensa'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'odisha';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'amritsar',
            'bathinda',
            'jalandhar',
            'ludhiana',
            'patiala'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'dera bassi',
            'gobindgarh',
            'khanna',
            'naya nangal',
            'sangrur',
            'faridkot',
            'dera baba nanak',
            'hoshiarpur',
            'rasulpur',
            'chowkimann',
            'guru ki dhab',
            'mrar kalan',
            'mukandpur',
            'naudhrani',
            'qila bharian',
            'aligarh',
            'aspal khurd',
            'binjon',
            'bishanpura',
            'changal',
            'fatehpur',
            'jaito sarja',
            'kharauri',
            'kotladoom',
            'lakho ke behram',
            'mureedke',
            'peer mohammad',
            'poohli',
            'rakhra',
            'rohila',
            'tirathpur',
            'bara pind',
            'batala',
            'gobindgarh mandi gobindgarh',
            'rupnagar',
            'subanpur',
            'shaheed bhagat singh nagar',
            'sirhind',
            'taran-tarn',
            'malerkotla',
            'moga',
            'sahibzada ajit singh nagar',
            'barnala',
            'fazilka',
            'mandi gobindgarh',
            'gurdaspur'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'punjab';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'jaipur',
            'jodhpur',
            'kota',
            'udaipur',
            'bikaner',
            'ajmer',
            'alwar',
            'bhilwara'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'bharatpur',
            'bhiwadi',
            'chittorgarh',
            'pali',
            'sri ganganagar',
            'tonk',
            'banswara',
            'baran',
            'barmer',
            'bundi',
            'churu',
            'dausa',
            'dholpur',
            'dungarpur',
            'hanumangarh',
            'jaisalmer',
            'jalore',
            'jhalawar',
            'jhunjhunu',
            'karauli',
            'nagaur',
            'pratapgarh',
            'rajsamand',
            'sawai madhopur',
            'sikar',
            'sirohi'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'rajasthan';
UPDATE pollution_data
SET location_type = CASE
        WHEN LOWER(location) = 'chennai' THEN 'Tier 1 City'
        WHEN location IN (
            'coimbatore',
            'madurai',
            'tiruchirappalli',
            'trichy',
            'salem',
            'tiruppur',
            'vellore',
            'thoothukudi',
            'tuticorin',
            'erode'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'mettur',
            'cuddalore',
            'dharmapuri',
            'gummidipundi',
            'nagercoil',
            'perambalur',
            'sivaganga',
            'theni',
            'tiruvannamalai',
            'tiruvarur',
            'viluppuram',
            'udhagamandalam',
            'palkalaiperur',
            'ramanathapuram',
            'ariyalur',
            'chengalpattu',
            'dindigul',
            'hosur',
            'kancheepuram'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'tamilnadu';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'lucknow',
            'noida',
            'greater noida',
            'ghaziabad',
            'kanpur',
            'varanasi',
            'prayagraj',
            'agra',
            'meerut',
            'bareilly',
            'moradabad',
            'Muzaffarnagar',
            'aligarh',
            'jhansi',
            'gorakhpur',
            'saharanpur'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'firozabad',
            'mathura',
            'vrindavan',
            'hapur',
            'bulandshahr',
            'baghpat',
            'rae bareli',
            'unnao',
            'khurja',
            'gajraula',
            'anpara',
            'ayodhya'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'uttar pradesh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location = 'itanagar' THEN 'Tier 2 City'
        WHEN location = 'naharlagun' THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'arunachal pradesh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'patna',
            'gaya',
            'bhagalpur',
            'muzaffarpur',
            'darbhanga',
            'begusarai',
            'purnea'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'bodh gaya',
            'rajgir',
            'sasaram',
            'hajipur',
            'araria',
            'ara',
            'bettiah',
            'bihar sharif',
            'chhapra',
            'katihar',
            'kishanganj',
            'manguraha',
            'motihari',
            'munger',
            'saharsa',
            'samastipur',
            'siwan'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'bihar';
UPDATE pollution_data
SET location_type = CASE
        WHEN location = 'chandigarh' THEN 'Tier 2 City'
        WHEN location = 'bhilai' THEN 'Tier 2 City'
        ELSE location_type
    END
WHERE location IN ('chandigarh', 'bhilai');
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN (
            'raipur',
            'bhilai',
            'durg',
            'durg-bhilainagar',
            'bilaspur',
            'korba',
            'raigarh'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'chhal',
            'kunjemura',
            'milupara',
            'tumidh'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'chhattisgarh';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('mumbai', 'pune') THEN 'Tier 1 City'
        WHEN location IN (
            'nagpur',
            'nashik',
            'thane',
            'navi mumbai',
            'pimpri-chinchwad',
            'aurangabad',
            'kolhapur',
            'solapur',
            'amravati',
            'sangli',
            'nanded',
            'jalgaon',
            'ahmednagar'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'ambernath',
            'badlapur',
            'chandrapur',
            'latur',
            'lote',
            'ulhasnagar',
            'jalna',
            'akola',
            'bhiwandi',
            'dombivli',
            'roha',
            'vasai-virar',
            'belapur',
            'boisar',
            'dhule',
            'mahad',
            'malegaon',
            'mira-bhayandar',
            'parbhani',
            'tarapur',
            'mbernath'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'maharashtra';
UPDATE pollution_data
SET location_type = CASE
        WHEN location = 'shillong' THEN 'Tier 2 City'
        WHEN location IN (
            'byrnihat',
            'dawki',
            'tura',
            'nongstoin',
            'khliehriat',
            'umiam',
            'umsning'
        ) THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'meghalaya';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('puducherry', 'pondicherry') THEN 'Tier 2 City'
        WHEN location = 'karaikal' THEN 'Tier 3 / Small Town'
        ELSE location_type
    END
WHERE state = 'puducherry';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('dehradun', 'haridwar', 'haldwani') THEN 'Tier 2 City'
        WHEN location IN ('rishikesh', 'kashipur', 'rudrapur') THEN 'Tier 3 City'
    END
WHERE state = 'uttarakhand';
UPDATE pollution_data
SET location_type = CASE
        WHEN location IN ('kolkata') THEN 'Tier 1 City'
        WHEN location IN (
            'howrah',
            'asansol',
            'durgapur',
            'siliguri',
            'haldia',
            'kharagpur',
            'kalyani',
            'barasat',
            'uluberia',
            'krishnanagar',
            'berhampore',
            'darjeeling',
            'malda',
            'jalpaiguri',
            'bardhaman',
            'asansol-raniganj',
            'Barrackpore'
        ) THEN 'Tier 2 City'
        WHEN location IN (
            'raniganj',
            'south 24 parganas',
            'sankrail',
            'bankura',
            'bolpur',
            'rampurhat',
            'suri',
            'cooch behar',
            'balurghat',
            'chinsurah',
            'dankuni',
            'rishra',
            'tribeni',
            'bansberia-tribeni',
            'ranaghat',
            'ghatal',
            'medinipur',
            'tamluk',
            'purulia',
            'alipurduar',
            'amtala',
            'baruipur',
            'jhargram',
            'kalimpong',
            'raiganj',
            'raigunj',
            'madhyamgram',
            'birpara',
            'english bazar',
            'jaigaon',
            'uttarpara',
            'coochbihar'
        ) THEN 'Tier 3 City'
    END
WHERE state = 'west bengal';
UPDATE pollution_data
SET location_type = 'Tier 3 City'
WHERE location IN ('daman', 'silvassa', 'baldevi', 'patlara')
    AND state = 'Dadra and Nagar Haveli and Daman and Diu';
UPDATE pollution_data
SET location_type = CASE
        WHEN location = 'gangtok' THEN 'Tier 2 City'
        WHEN location IN (
            'namchi',
            'mangan',
            'pelling',
            'rangpo',
            'ravangla',
            'singtam',
            'chungthang'
        ) THEN 'Tier 3 City'
    END
WHERE state = 'sikkim';
UPDATE pollution_data
SET location_type = 'Tier 2 City'
WHERE location = 'agartala'
    AND state = 'tripura';
UPDATE pollution_data
SET location_type = 'Tier 2 City'
WHERE location = 'imphal'
    AND state = 'manipur';
UPDATE pollution_data
SET location_type = 'Tier 3 City'
WHERE location = 'port blair'
    AND state = 'andaman and nicobar islands';
UPDATE pollution_data
SET location_type = 'Tier 3 Town'
WHERE state = 'Punjab'
    AND location IN (
        'Chowkimann (Jagraon)',
        'Guru Ki Dhab (Kotkapura)',
        'Mrar Kalan (Muktsar)',
        'Mukandpur (Nawanshahr)',
        'Naudhrani (Malerkotla)',
        'Qila Bharian (Sangrur)',
        'Aligarh (Jagraon)',
        'Aspal Khurd (Tapa)',
        'Binjon (Garhshankar)',
        'Bishanpura (Payal)',
        'Changal (Sangrur)',
        'Fatehpur (Samana)',
        'Jaito Sarja (Batala)',
        'Kharauri (Sirhind)',
        'Kotladoom (Ajnala)',
        'Lakho ke Behram (Firozpur)',
        'Mureedke (Batala)',
        'Peer Mohammad (Jalalabad)',
        'Poohli (Bathinda)',
        'Rakhra (Patiala)',
        'Rohila (Samrala)',
        'Tirathpur (Amritsar I)',
        'Bara Pind (Goraya)',
        'Subanpur (Dhilwan)',
        'Sahibzada Ajit Singh Nagar (Mohali)'
    );
UPDATE pollution_data
SET location_type = 'Tier 3 city/town/village'
WHERE location_type IN (
        'Tier 3 / Small Town',
        'Tier 3 City',
        'Tier 3 Town'
    );

