insert INTO artist VALUES (DEFAULT, DEFAULT, 'Camel','7-01-1971');
insert INTO artist VALUES (DEFAULT, DEFAULT, 'Eloy','2-01-1968');
insert INTO artist VALUES (DEFAULT, DEFAULT, 'Jethro  Tull','1-05-1968');
insert INTO artist VALUES (DEFAULT, DEFAULT, 'Focus','8-04-1969');
insert INTO artist VALUES (DEFAULT, DEFAULT, 'Rush','7-11-1968');





insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Mirage','Progressive Rock', 60, 1974, 38.22,'https://upload.wikimedia.org/wikipedia/en/8/89/Camel-Mirage.jpg',(SELECT "id" FROM artist WHERE name='Camel'))
insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Stationary Traveller','Progressive Rock', 60, 1984, 38.22,'https://upload.wikimedia.org/wikipedia/en/e/e6/Camel-StationaryTraveller.jpg',(SELECT "id" FROM artist WHERE name='Camel'))
insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Ocean','Progressive Rock', 60, 1977, 43.53,'https://upload.wikimedia.org/wikipedia/en/b/ba/Eloy_Ocean.jpg',(SELECT "id" FROM artist WHERE name='Eloy'))
insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Aqualung','Progressive Rock', 60, 1971, 41.39,'https://upload.wikimedia.org/wikipedia/en/1/19/JethroTullAqualungalbumcover.jpg',(SELECT "id" FROM artist WHERE name='Jethro  Tull'))
insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Golden Oldies','Progressive Rock', 60, 2014, 50,'https://cps-static.rovicorp.com/3/JPG_500/MI0003/729/MI0003729754.jpg?partner=allrovi.com',(SELECT "id" FROM artist WHERE name='Focus'))
insert INTO album (id, "name", "genre", "price", "date", "length", "coverUrl", "artistId") VALUES  (DEFAULT,'Moving Pictures','Progressive Rock', 60, 1981, 40,'https://upload.wikimedia.org/wikipedia/en/4/4a/Moving_Pictures.jpg',(SELECT "id" FROM artist WHERE name='Rush'))


INSERT INTO song VALUES (DEFAULT,'Freefall', 5.52, (SELECT "id" FROM album WHERE name='Mirage'));
INSERT INTO song VALUES (DEFAULT,'Supertwister', 3.18, (SELECT "id" FROM album WHERE name='Mirage'));
INSERT INTO song VALUES (DEFAULT,'Nimrodel', 9.16, (SELECT "id" FROM album WHERE name='Mirage'));
INSERT INTO song VALUES (DEFAULT,'Earthrise', 6.40, (SELECT "id" FROM album WHERE name='Mirage'));
INSERT INTO song VALUES (DEFAULT,'Lady Fantasy', 12.43, (SELECT "id" FROM album WHERE name='Mirage'));

INSERT INTO song VALUES (DEFAULT,'Pressure Points', 2.08, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Refugee',3.46, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Vopos', 5.31, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Cloak & Dagger Man', 3.52, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Stationary Traveller', 5.33, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'West Berlin', 5.08, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Fingertips', 4.27, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Missing', 4.18, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'After Words', 1.59, (SELECT "id" FROM album WHERE name='Stationary Traveller'));
INSERT INTO song VALUES (DEFAULT,'Long Goodbyes', 5.17, (SELECT "id" FROM album WHERE name='Stationary Traveller'));

INSERT INTO song VALUES (DEFAULT,'Poseidons Creation', 11.42, (SELECT "id" FROM album WHERE name='Ocean'));
INSERT INTO song VALUES (DEFAULT,'Incarnation Of Logos', 8.26, (SELECT "id" FROM album WHERE name='Ocean'));
INSERT INTO song VALUES (DEFAULT,'Decay Of Logos', 8.17, (SELECT "id" FROM album WHERE name='Ocean'));
INSERT INTO song VALUES (DEFAULT,'Atlantis Agony At June 5th-8498', 15.39, (SELECT "id" FROM album WHERE name='Ocean'));

INSERT INTO song VALUES (DEFAULT,'Aqualung', 6.36, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Cross Eyed Mary', 4.10, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Cheap Day Return', 1.21, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Mother Goose', 3.53, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Wond Ring Aloud', 1.53, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Up To Me', 3.14, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'My God', 7.11, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Hymn 43', 3.17, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Slipstream', 1.11, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Locomotive Breath', 4.26, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Wind Up', 6.01, (SELECT "id" FROM album WHERE name='Aqualung'));
INSERT INTO song VALUES (DEFAULT,'Lick Your Fingers Clean', 2.46, (SELECT "id" FROM album WHERE name='Aqualung'));

INSERT INTO song VALUES (DEFAULT,'Hocus Pocus',6.51, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Tommy',4.16, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'House of the King',3.20, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Focus 1',6.58, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Sylvia',5.29, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Focus 3 & 2',5.30, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Aya Yippie Hippie Yee',7.35, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Neurotika',3.40, (SELECT "id" FROM album WHERE name='Golden Oldies'));
INSERT INTO song VALUES (DEFAULT,'Brother',6.30, (SELECT "id" FROM album WHERE name='Golden Oldies'));

INSERT INTO song VALUES (DEFAULT,'Tom Sawyer',4.37, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'Red Barchetta',6.10, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'YYZ',4.26, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'Limelight',4.20, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'The Camera Eye',10.59, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'Witch Hunt',4.46, (SELECT "id" FROM album WHERE name='Moving Pictures'));
INSERT INTO song VALUES (DEFAULT,'Vital Signs',4.46, (SELECT "id" FROM album WHERE name='Moving Pictures'));
