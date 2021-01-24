INSERT INTO TRENER(ID, IMIE, NAZWISKO)
VALUES
(1,'JERZY',     'ENGEL'),
(2,'ADAM',      'NAWAŁKA'),
(3,'GARETH',    'SOUTHGATE'),
(4,'DAVID',     'BECKHAM'),
(5,'ROY',       'HODGSON'),
(6,'JAN',       'SZKOLNIKOWSKI'),
(7,'WŁADYSŁAW', 'SĘDZIECKI'),
(8,'WOJCIECH',  'MAGIERA'),
(9, 'ADAM',     'ZBIGNIEW'),
(10,'JAN',      'LUSTGARDEN'),
(11,'GARETH',   'ANTYCHAWT'),
(12,'LIONEL',   'POLS'),
(13,'DAREK',    'POLIPA'),
(14,'ADAM',     'MAGIERA')
;

INSERT INTO ARBITER(ID_ARBITER, IMIE, NAZWISKO)
VALUES
(1,'TOMASZ',  'MARCINIAK'),
(2,'ANDRZEJ', 'MROZNY'),
(3,'TOMASZ',  'DZIALOWY'),
(4,'PATRYK',  'ROJEWSKI'),
(5,'OUSAMANE','PAUL'),
(6,'BRIAN',   'HALL'),
(7,'ALEX',    'KOTEY'),
(8,'ROGER',   'GURLEY')
;

INSERT INTO LIGA(ID_LIG, NAZWA, NARODOWOSC)
VALUES
(1,'PREMIER LEAGUE',      'ANGLIA'),
(2,'LA LIGA',             'HISZPANIA'),
(3,'CALCIO A',            'WŁOCHY'),
(4,'LIGUE 1',             'FRANCJA'),
(5,'ORANGE EKSTRAKLASA',  'POLSKA')
;

INSERT INTO MECZ(ID_MECZ, GOSPODARZE, GOSCIE, NUMER_STADION, DATA, NR_ARBITER)
VALUES
(1,   'FC BARCELONA',     'REAL MADRYT',      3,    '2018-06-01',     1),
(2,   'ZALESIE FC',       'LEGIA WARSZAWA',   4,    '2018-02-03',     1),
(3,   'TOTTENHAM',        'LEICESTER CITY',   2,    '2018-02-05',     1),
(4,   'AS ROMA',          'MANCHESTER UNITED',3,    '2018-02-07',     5),
(5,   'CHELSEA LONDYN',   'JUVENTUS TURYN',   4,    '2018-02-15',     3)
;

INSERT INTO KLUB(ID_KLUB,ROK_UTWORZENIA, KLUB_NAZWA, ID_TRENER,ID_LIGA, id_meczu)
VALUES
(1,   1899 , 'FC BARCELONA',      2,   2,      1   ),
(2,   1902 , 'REAL MADRYT',       4,    2,      1   ),
(3,   1882 , 'TOTTENHAM',         6,    1,      3   ),
(4,   1878 , 'MANCHESTER UNITED', 1,   1,      4   ),
(5,   1970 , 'PSG',               7,    4,      null),
(6,   1897 , 'JUVENTUS TURYN',    14,    3,      5   ),
(7,   1884 , 'LEICESTER CITY',    12,    1,      3   ),
(8,   1905 , 'CRYSTAL PALACE',    10,   1,      null),
(9,   1905 , 'CHELSEA LONDYN',    9,    1,      5   ),
(10,  1927 , 'AS ROMA',           3,    3,      4   ),
(11,  1916 , 'LEGIA WARSZAWA',    8,    5,      2   ),
(12,  1997 , 'WISLA KRAKOW',      5,   5,      null),
(13,  2005 , 'ZALESIE FC',        null, NULL,   2   ),
(14,  2007 , 'BAGIENICE FC',      null, NULL,   null);

INSERT INTO PILKARZ(ID_PILKARZ, IMIE, NAZWISKO, POZYCJA, NARODOWOSC, KLUB_ID)
VALUES
(1,   'JAKUB',     'WAWRZYNIAK',   'SRODKOWY OBRONCA',             'POLSKA',    11),
(2,   'PAWEL',     'BROZEK',       'NAPASTNIK',                    'POLSKA',    12),
(3,   'MICHAL',    'PAZDAN',       'SRODKOWY OBRONCA',             'POLSKA',    11),
(4,   'OUSMANE',   'DEMBELE',      'PRAWY POMOCNIK',               'FRANCJA',  1),
(5,   'CRISTIANO', 'RONALDO',      'LEWY SKRZYDLOWY',              'PORTUGALIA',2),
(6,   'CHRISTIAN', 'ERIKSEN',      'SRODKOWY POMOCNIK OFENSYWNY',  'DANIA',     3),
(7,   'JAKUB',     'MIERZEJEWSKI', 'LEWY OBRONCA',                 'POLSKA',    12),
(8,   'RIO',       'FERDINAND',    'SRODKOWY OBRONCA',             'ANGLIA',    4),
(9,   'KASPER',    'SCHMEICHEL',   'BRAMKARZ',                     'DANIA',     7),
(10,  'LIONEL',    'MESSI',        'PRAWY SKRZYDLOWY',             'ARGENTYNA',1),
(11,  'LUIS',      'SUAREZ',       'NAPASTNIK',                    'URUGWAJ',  1),
(12,  'EDINSON',    'CAVANI',       'NAPASTNIK',                    'URUGWAJ', 5),
(13,  'WOJCIECH',   'SZCZESNY',      'BRAMKARZ',                     'POLSKA', 6),
(14,  'PAULO',     'DYBALA',       'SRODKOWY POMOCNIK OFENSYWNY',  'ARGENTYNA',6),
(15,  'GONZALO',   'HIGUAIN',      'NAPASTNIK',                    'ARGENTYNA',6),
(16,  'PAUL',      'POGBA',        'SRODKOWY POMOCNIK',            'FRANCJA',  4),
(17,  'ERIC',      'BAILLY',       'SRODKOWY OBRONCA',             'WKS',      4),
(18,  'WILFRIED',  'ZAHA',         'PRAWY SKRZYDLOWY',             'WKS',      7),
(19,  'KYLIAN',    'MBAPPE',       'NAPASTNIK',                    'FRANCJA',  5),
(20,  'JAMIE',     'VARDY',        'NAPASTNIK',                    'ANGLIA',   7),
(21,  'EDEN',      'HAZARD',       'LEWY SKRZYDLOWY',              'BELGIA',   9),
(22,  'RADJA',     'NAINGOLAN',    'SRODKOWY POMOCNIK',            'BELGIA',   10),
(23,  'ARKADIUSZ', 'BOGUS',        'NAPASTNIK',                    'POLSKA',   14),
(24,  'DARIUSZ',   'GAWĘDA',       'BRAMKARZ',                     'POLSKA',   13),
(25,  'MARCIN',    'KOS',          'SRODKOWY POMOCNIK',            'POLSKA',   NULL),
(26,  'PATRYK',    'MATOWSKI',     'PRAWY SKRZYDLOWY',             'POLSKA',   NULL)
;


INSERT INTO STADION(NUMER, NAZWA, MIASTO, KRAJ, NALEZY_DO)
VALUES
(1,   'CAMP NOU',                              'BARCELONA',  'HISZPANIA', 'FC BARCELONA'),
(2,   'WEMBLEY STADIUM',                       'LONDYN',     'ANGLIA', 'TOTTENHAM'),
(3,   'OLD TRAFFORD',                          'MANCHESTER', 'ANGLIA', 'MANCHESTER UNITED'),
(4,   'PARC DES PRINCES',                      'PARYZ',      'FRANCJA', 'PSG'),
(5,   'STAMFORD BRIDGE',                       'LONDYN',     'ANGLIA', 'CHELSEA LONDYN'),
(6,   'ESTADIO SANTIAGO BERNABÉU',             'MADRYT',     'HISZPANIA', 'REAL MADRYT'),
(7,   'STADION WOJSKA POLSKIEGO W WARSZAWIE',  'WARSZAWA',   'POLSKA', 'LEGIA WARSZAWA'),
(8,   'STADION MIEJSKI IM. HENRYKA REYMANA',   'KRAKÓW',     'POLSKA', 'WISLA KRAKOW'),
(9,   'JUVENTUS STADIUM',                      'TURYN',      'WŁOCHY', 'JUVENTUS TURYN');
