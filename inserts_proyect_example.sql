-- Continents
INSERT INTO Continents (name) VALUES 
('Americas'),
('Europe'),
('Asia'),
('Africa'),
('Oceania');

-- Americas
INSERT INTO Countries (name, continent_id) VALUES
('United States', 1),
('Brazil', 1),
('Canada', 1),
('Mexico', 1),
('Argentina', 1);

-- Europe
INSERT INTO Countries (name, continent_id) VALUES
('France', 2),
('Germany', 2),
('Spain', 2),
('Italy', 2),
('United Kingdom', 2);

-- Asia
INSERT INTO Countries (name, continent_id) VALUES
('China', 3),
('India', 3),
('Japan', 3),
('South Korea', 3),
('Indonesia', 3);

-- Africa
INSERT INTO Countries (name, continent_id) VALUES
('Nigeria', 4),
('Egypt', 4),
('South Africa', 4),
('Ethiopia', 4),
('Kenya', 4);

-- Oceania
INSERT INTO Countries (name, continent_id) VALUES
('Australia', 5),
('New Zealand', 5),
('Fiji', 5),
('Papua New Guinea', 5),
('Solomon Islands', 5);

INSERT INTO Languages (name) VALUES 
('English'),
('Portuguese'),
('French'),
('Spanish'),
('German'),
('Italian'),
('Chinese'),
('Hindi'),
('Japanese'),
('Korean'),
('Indonesian'),
('Arabic'),
('Amharic'),
('Swahili'),
('Dutch');

-- Americas
INSERT INTO CountryLanguages (country_id, language_id) VALUES
(1, 1),  -- United States speaks English
(2, 2),  -- Brazil speaks Portuguese
(3, 1),  -- Canada speaks English
(4, 4),  -- Mexico speaks Spanish
(5, 4);  -- Argentina speaks Spanish

-- Europe
INSERT INTO CountryLanguages (country_id, language_id) VALUES
(6, 3),  -- France speaks French
(7, 5),  -- Germany speaks German
(8, 4),  -- Spain speaks Spanish
(9, 6),  -- Italy speaks Italian
(10, 1); -- United Kingdom speaks English

-- Asia
INSERT INTO CountryLanguages (country_id, language_id) VALUES
(11, 7), -- China speaks Chinese
(12, 8), -- India speaks Hindi
(13, 9), -- Japan speaks Japanese
(14, 10), -- South Korea speaks Korean
(15, 11); -- Indonesia speaks Indonesian

-- Africa
INSERT INTO CountryLanguages (country_id, language_id) VALUES
(16, 12), -- Nigeria speaks Arabic
(17, 12), -- Egypt speaks Arabic
(18, 1), -- South Africa speaks English
(19, 13), -- Ethiopia speaks Amharic
(20, 14); -- Kenya speaks Swahili

-- Oceania
INSERT INTO CountryLanguages (country_id, language_id) VALUES
(21, 1), -- Australia speaks English
(22, 1), -- New Zealand speaks English
(23, 15), -- Fiji speaks Dutch
(24, 1), -- Papua New Guinea speaks English
(25, 1); -- Solomon Islands speaks English

-- Americas
INSERT INTO Capitals (name, country_id, coordinates) VALUES
('Washington D.C.', 1, point(-77.0369, 38.9072)),
('Brasília', 2, point(-47.9297, -15.7801)),
('Ottawa', 3, point(-75.6972, 45.4215)),
('Mexico City', 4, point(-99.1332, 19.4326)),
('Buenos Aires', 5, point(-58.3816, -34.6037));

-- Europe
INSERT INTO Capitals (name, country_id, coordinates) VALUES
('Paris', 6, point(2.3522, 48.8566)),
('Berlin', 7, point(13.4050, 52.5200)),
('Madrid', 8, point(-3.7038, 40.4168)),
('Rome', 9, point(12.4964, 41.9028)),
('London', 10, point(-0.1276, 51.5074));

-- Asia
INSERT INTO Capitals (name, country_id, coordinates) VALUES
('Beijing', 11, point(116.4074, 39.9042)),
('New Delhi', 12, point(77.2090, 28.6139)),
('Tokyo', 13, point(139.6917, 35.6895)),
('Seoul', 14, point(126.9780, 37.5665)),
('Jakarta', 15, point(106.8650, -6.2088));

-- Africa
INSERT INTO Capitals (name, country_id, coordinates) VALUES
('Abuja', 16, point(7.4951, 9.0579)),
('Cairo', 17, point(31.2357, 30.0444)),
('Pretoria', 18, point(28.2293, -25.7469)),
('Addis Ababa', 19, point(38.7468, 9.0227)),
('Nairobi', 20, point(36.8219, -1.2864));

-- Oceania
INSERT INTO Capitals (name, country_id, coordinates) VALUES
('Canberra', 21, point(149.1244, -35.2809)),
('Wellington', 22, point(174.7633, -41.2865)),
('Suva', 23, point(178.4419, -18.1248)),
('Port Moresby', 24, point(147.1543, -9.4783)),
('Honiara', 25, point(159.9526, -9.4456));

-- Washington D.C.
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Northwest', 1, 322323, point(-77.0369, 38.9072)),
('Northeast', 1, 289936, point(-77.0369, 38.9072));

-- Brasília
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Plano Piloto', 2, 214528, point(-47.9297, -15.7801)),
('Lago Sul', 2, 29816, point(-47.9297, -15.7801));

-- Ottawa
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Downtown', 3, 192297, point(-75.6972, 45.4215)),
('Centretown', 3, 23617, point(-75.6972, 45.4215));

-- Mexico City
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Cuauhtémoc', 4, 531831, point(-99.1332, 19.4326)),
('Coyoacán', 4, 620416, point(-99.1332, 19.4326));

-- Buenos Aires
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Palermo', 5, 252312, point(-58.3816, -34.6037)),
('San Telmo', 5, 28756, point(-58.3816, -34.6037));

-- Paris
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('1st arrondissement', 6, 17588, point(2.3522, 48.8566)),
('4th arrondissement', 6, 27458, point(2.3522, 48.8566));

-- Berlin
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Mitte', 7, 374819, point(13.4050, 52.5200)),
('Friedrichshain-Kreuzberg', 7, 280904, point(13.4050, 52.5200));

-- Madrid
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Centro', 8, 131928, point(-3.7038, 40.4168)),
('Salamanca', 8, 147707, point(-3.7038, 40.4168));

-- Rome
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Centro Storico', 9, 23539, point(12.4964, 41.9028)),
('Trastevere', 9, 18656, point(12.4964, 41.9028));

-- London
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Westminster', 10, 261317, point(-0.1276, 51.5074)),
('Kensington and Chelsea', 10, 156129, point(-0.1276, 51.5074));

-- Beijing
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Dongcheng', 11, 911383, point(116.4074, 39.9042)),
('Chaoyang', 11, 3544948, point(116.4074, 39.9042));

-- New Delhi
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('South Delhi', 12, 2732359, point(77.2090, 28.6139)),
('North Delhi', 12, 883077, point(77.2090, 28.6139));

-- Tokyo
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Shinjuku', 13, 339211, point(139.6917, 35.6895)),
('Shibuya', 13, 239922, point(139.6917, 35.6895));

-- Seoul
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Jung-gu', 14, 130589, point(126.9780, 37.5665)),
('Gangnam-gu', 14, 162305, point(126.9780, 37.5665));

-- Jakarta
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Central Jakarta', 15, 964774, point(106.8650, -6.2088)),
('South Jakarta', 15, 727387, point(106.8650, -6.2088));

-- Abuja
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Garki', 16, 264476, point(7.4951, 9.0579)),
('Asokoro', 16, 312157, point(7.4951, 9.0579));

-- Cairo
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Zamalek', 17, 181698, point(31.2357, 30.0444)),
('Nasr City', 17, 290420, point(31.2357, 30.0444));

-- Pretoria
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Centurion', 18, 236580, point(28.2293, -25.7469)),
('Brooklyn', 18, 117004, point(28.2293, -25.7469));

-- Addis Ababa
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Kirkos', 19, 360001, point(38.7468, 9.0227)),
('Nifas Silk-Lafto', 19, 292167, point(38.7468, 9.0227));

-- Nairobi
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Westlands', 20, 203716, point(36.8219, -1.2864)),
("Lang'ata", 20, 183950, point(36.8219, -1.2864));

-- Canberra
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('City', 21, 228700, point(149.1244, -35.2809)),
('Gungahlin', 21, 57022, point(149.1244, -35.2809));

-- Wellington
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Wellington CBD', 22, 215400, point(174.7633, -41.2865)),
('Karori', 22, 15219, point(174.7633, -41.2865));

-- Suva
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Downtown Suva', 23, 2285, point(178.4419, -18.1248)),
('Nasese', 23, 4962, point(178.4419, -18.1248));

-- Port Moresby
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Port Moresby Central', 24, 174411, point(147.1543, -9.4783)),
('Gerehu', 24, 125025, point(147.1543, -9.4783));

-- Honiara
INSERT INTO CitySubdivisions (name, capital_id, population, coordinates) VALUES
('Honiara City Centre', 25, 84896, point(159.9526, -9.4456)),
('Rove', 25, 5702, point(159.9526, -9.4456));


-- Estados Unidos
INSERT INTO States (name, country_id) VALUES
('California', 1),
('Texas', 1);

-- Brasil
INSERT INTO States (name, country_id) VALUES
('São Paulo', 2),
('Rio de Janeiro', 2);

-- Canadá
INSERT INTO States (name, country_id) VALUES
('Ontario', 3),
('Quebec', 3);

-- México
INSERT INTO States (name, country_id) VALUES
('Estado de México', 4),
('Nuevo León', 4);

-- Argentina
INSERT INTO States (name, country_id) VALUES
('Buenos Aires', 5),
('Córdoba', 5);

-- Francia
INSERT INTO States (name, country_id) VALUES
('Île-de-France', 6),
("Provence-Alpes-Côte d\'Azur", 6);

-- Alemania
INSERT INTO States (name, country_id) VALUES
('North Rhine-Westphalia', 7),
('Bavaria', 7);

-- España
INSERT INTO States (name, country_id) VALUES
('Andalusia', 8),
('Catalonia', 8);

-- Italia
INSERT INTO States (name, country_id) VALUES
('Lombardy', 9),
('Lazio', 9);

-- Reino Unido
INSERT INTO States (name, country_id) VALUES
('England', 10),
('Scotland', 10);

-- China
INSERT INTO States (name, country_id) VALUES
('Guangdong', 11),
('Shandong', 11);

-- India
INSERT INTO States (name, country_id) VALUES
('Uttar Pradesh', 12),
('Maharashtra', 12);

-- Japón
INSERT INTO States (name, country_id) VALUES
('Tokyo', 13),
('Kanagawa', 13);

-- Corea del Sur
INSERT INTO States (name, country_id) VALUES
('Seoul', 14),
('Gyeonggi', 14);

-- Indonesia
INSERT INTO States (name, country_id) VALUES
('West Java', 15),
('East Java', 15);

-- Nigeria
INSERT INTO States (name, country_id) VALUES
('Lagos', 16),
('Kano', 16);

-- Egipto
INSERT INTO States (name, country_id) VALUES
('Cairo', 17),
('Alexandria', 17);

-- Sudáfrica
INSERT INTO States (name, country_id) VALUES
('Gauteng', 18),
('KwaZulu-Natal', 18);

-- Etiopía
INSERT INTO States (name, country_id) VALUES
('Oromia', 19),
('Amhara', 19);

-- Kenia
INSERT INTO States (name, country_id) VALUES
('Nairobi', 20),
('Mombasa', 20);

-- Australia
INSERT INTO States (name, country_id) VALUES
('New South Wales', 21),
('Victoria', 21);

-- Nueva Zelanda
INSERT INTO States (name, country_id) VALUES
('Auckland', 22),
('Wellington', 22);

-- Fiyi
INSERT INTO States (name, country_id) VALUES
('Central Division', 23),
('Western Division', 23);

-- Papúa Nueva Guinea
INSERT INTO States (name, country_id) VALUES
('Papua Region', 24),
('Highlands Region', 24);

-- Islas Salomón
INSERT INTO States (name, country_id) VALUES
('Guadalcanal', 25),
('Malaita', 25);


-- California
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Los Angeles', 1, 3979576, point(-118.2437, 34.0522)),
('San Diego', 1, 1425976, point(-117.1611, 32.7157));

-- Texas
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Houston', 2, 2320268, point(-95.3698, 29.7604)),
('San Antonio', 2, 1532233, point(-98.4936, 29.4241));

-- São Paulo
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('São Paulo', 3, 12325232, point(-46.6333, -23.5505)),
('Guarulhos', 3, 1392121, point(-46.5333, -23.4500));

-- Rio de Janeiro
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Rio de Janeiro', 4, 6718903, point(-43.1729, -22.9068)),
('São Gonçalo', 4, 1087850, point(-43.0067, -22.8262));

-- Ontario
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Toronto', 5, 2731571, point(-79.3832, 43.6532)),
('Ottawa', 5, 934243, point(-75.6972, 45.4215));

-- Quebec
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Montreal', 6, 1704694, point(-73.5673, 45.5017)),
('Quebec City', 6, 542298, point(-71.2080, 46.8139));

-- Estado de México
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Ecatepec de Morelos', 7, 1655015, point(-99.0069, 19.6012)),
('Nezahualcóyotl', 7, 1234477, point(-99.0333, 19.4000));

-- Nuevo León
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Monterrey', 8, 1153557, point(-100.3161, 25.6866)),
('Guadalupe', 8, 679806, point(-100.2550, 25.6767));

-- Buenos Aires
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Buenos Aires', 9, 2890151, point(-58.3816, -34.6037)),
('La Plata', 9, 899523, point(-57.9544, -34.9205));

-- Córdoba
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Córdoba', 10, 1332271, point(-64.1833, -31.4167)),
('Villa María', 10, 128280, point(-63.2458, -32.4075));

-- Île-de-France
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Paris', 11, 2140526, point(2.3522, 48.8566)),
('Versailles', 11, 85898, point(2.1301, 48.8014));

-- Provence-Alpes-Côte d'Azur
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Marseille', 12, 869815, point(5.3698, 43.2965)),
('Nice', 12, 342637, point(7.2619, 43.7102));

-- North Rhine-Westphalia
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Cologne', 13, 1085664, point(6.9603, 50.9375)),
('Düsseldorf', 13, 617280, point(6.7735, 51.2277));

-- Bavaria
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Munich', 14, 1484226, point(11.5819, 48.1351)),
('Nuremberg', 14, 518365, point(11.0775, 49.4496));

-- Andalusia
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Seville', 15, 688711, point(-5.9845, 37.3891)),
('Malaga', 15, 578460, point(-4.4214, 36.7196));

-- Catalonia
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Barcelona', 16, 1636762, point(2.1734, 41.3851)),
("L'Hospitalet de Llobregat", 16, 257038, point(2.1097, 41.3662));

-- Lombardy
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Milan', 17, 1404231, point(9.1900, 45.4642)),
('Bergamo', 17, 122601, point(9.6646, 45.6983));

-- Lazio
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Rome', 18, 2873494, point(12.4964, 41.9028)),
('Latina', 18, 119658, point(12.8922, 41.4689));

-- England
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('London', 19, 8982000, point(-0.1276, 51.5074)),
('Manchester', 19, 547627, point(-2.2426, 53.4808));

-- Scotland
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Glasgow', 20, 633120, point(-4.2500, 55.8609)),
('Edinburgh', 20, 488050, point(-3.1883, 55.9533));

-- Guangdong
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Guangzhou', 21, 15423751, point(113.2644, 23.1291)),
('Shenzhen', 21, 13035700, point(114.0579, 22.5431));

-- Shandong
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Jinan', 22, 7181534, point(117.1205, 36.6512)),
('Qingdao', 22, 5525051, point(120.3826, 36.0671));

-- Uttar Pradesh
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Lucknow', 23, 2908504, point(80.9462, 26.8467)),
('Kanpur', 23, 2767031, point(80.3319, 26.4499));

-- Maharashtra
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Mumbai', 24, 12442373, point(72.8777, 19.0760)),
('Pune', 24, 3124458, point(73.8567, 18.5204));

-- Tokyo
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Shinjuku', 25, 346812, point(139.7036, 35.6938)),
('Shibuya', 25, 237133, point(139.7015, 35.6640));

-- Kanagawa
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Yokohama', 26, 3726167, point(139.6380, 35.4437)),
('Kawasaki', 26, 1494254, point(139.7020, 35.5309));

-- Seoul
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Gangnam-gu', 27, 564140, point(127.0568, 37.5172)),
('Jung-gu', 27, 136860, point(126.9907, 37.5639));

-- Gyeonggi
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Suwon', 28, 1196094, point(127.0095, 37.2636)),
('Ansan', 28, 778720, point(126.8325, 37.3230));

-- West Java
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Bandung', 29, 2557414, point(107.6186, -6.9175)),
('Bekasi', 29, 2681042, point(106.9915, -6.2383));

-- East Java
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Surabaya', 30, 2947627, point(112.7508, -7.2575)),
('Malang', 30, 917663, point(112.6304, -7.9813));

-- Lagos
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Lagos Island', 31, 2878856, point(3.4142, 6.5244)),
('Ikeja', 31, 313333, point(3.3792, 6.5244));

-- Kano
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Kano Municipal', 32, 2690949, point(8.5167, 11.9961)),
('Fagge', 32, 301663, point(8.5350, 12.0005));

-- Cairo
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Cairo', 33, 10007695, point(31.2357, 30.0444)),
('Giza', 33, 4239988, point(31.2357, 30.0131));

-- Alexandria
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Alexandria', 34, 5163750, point(29.9563, 31.2001)),
('Borg El Arab', 34, 174612, point(29.8136, 30.9170));

-- Gauteng
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Johannesburg', 35, 5793694, point(28.0473, -26.2041)),
('Pretoria', 35, 741651, point(28.1870, -25.7469));

-- KwaZulu-Natal
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Durban', 36, 595061, point(31.0221, -29.8697)),
('Pietermaritzburg', 36, 618536, point(30.3928, -29.5913));

-- Oromia
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Addis Ababa', 37, 3384569, point(38.7468, 9.0227)),
('Jimma', 37, 216149, point(36.8183, 7.6770));

-- Amhara
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Bahir Dar', 38, 348429, point(37.3333, 11.6000)),
('Gondar', 38, 231977, point(37.4667, 12.6000));

-- Nairobi
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Nairobi', 39, 4397073, point(36.8219, -1.2864)),
('Kibera', 39, 200000, point(36.7805, -1.3138));

-- Mombasa
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Mombasa Island', 40, 938131, point(39.6636, -4.0435)),
('Nyali', 40, 176320, point(39.7159, -3.9490));

-- New South Wales
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Sydney', 41, 5312163, point(151.2093, -33.8688)),
('Newcastle', 41, 322278, point(151.7817, -32.9278));

-- Victoria
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Melbourne', 42, 5078193, point(144.9631, -37.8136)),
('Geelong', 42, 191440, point(144.3547, -38.1499));

-- Auckland
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Auckland', 43, 1657100, point(174.7633, -36.8485)),
('Manukau', 43, 170600, point(174.8393, -36.9911));

-- Wellington
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Wellington', 44, 215400, point(174.7762, -41.2865)),
('Lower Hutt', 44, 110700, point(174.9246, -41.2099));

-- Central Division
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Suva', 45, 93423, point(178.4419, -18.1248)),
('Nausori', 45, 47694, point(178.5590, -18.0416));

-- Western Division
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Lautoka', 46, 56881, point(177.4381, -17.6119)),
('Nadi', 46, 53695, point(177.4456, -17.7534));

-- Papua Region
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Port Moresby', 47, 364125, point(147.1543, -9.4783)),
('Lae', 47, 279789, point(146.9847, -6.7333));

-- Highlands Region
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Mt Hagen', 48, 46841, point(144.2372, -5.8600)),
('Goroka', 48, 18700, point(145.3870, -6.0830));

-- Guadalcanal
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Honiara', 49, 84896, point(159.9526, -9.4456)),
('Tandai', 49, 1526, point(159.7166, -9.3274));

-- Malaita
INSERT INTO Municipalities (name, state_id, population, coordinates) VALUES
('Auki', 50, 5600, point(160.6986, -8.7679)),
("Malu\'u", 50, 327, point(160.8414, -9.2009));

