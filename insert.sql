INSERT INTO musicgenre (name)
	VALUES  ('Rap'),
            ('Rock'),
            ('Jazz'),
            ('Pop'),
            ('Classic');

INSERT INTO artist (name)
	VALUES  ('Oxxxymiron'),
            ('Eminem'),
            ('Ария'),
            ('Louna'),
            ('Nina Simone'),
            ('Louis Armstrong'),
            ('Zoloto'),
            ('Клава Кока'),
            ('Чайковский'),
            ('Моцарт');


INSERT INTO artistgenre (artist_id, genre_id)
	VALUES  (1, 1),
            (2, 1),
            (3, 2),
            (4, 2),
            (4, 4),
            (5, 3),
            (6, 3),
            (7, 4),
            (8, 4),
            (9, 5),
            (10, 5);

INSERT INTO album (name, publication_date)
	VALUES  ('Beauty and Ugliness', '2021-12-01'),
            ('Kamikaze', '2018-07-15'),
            ('Generator of Evil', '1998-03-02'),
            ('Beginning of a new circle', '2022-03-05'),
            ('Little Girl Blue', '1958-02-13'),
            ('Hello Dolly!', '1964-10-24'),
            ('8 months in Vegas', '2019-12-14'),
            ('Indecent about personal things', '2019-05-19'),
            ('Seasons', '1875-11-08'),
            ('Requiem', '1793-09-30');

INSERT INTO artistalbum (artist_id, album_id)
	VALUES  (1, 1),
            (2, 2),
            (3, 3),
            (4, 4),
            (5, 5),
            (6, 6),
            (7 ,7),
            (8, 8),
            (9, 9),
            (10, 10);


INSERT INTO track (name, duration, album_id)
	VALUES  ('Hop Mechanics', 138, 1),
            ('Beauty and Ugliness', 159, 1),
            ('Partisan Radio', 138, 1)
            ('The Ringer', 338, 2),
            ('Lucky You', 365, 2),
            ('The vicious circle', 398, 3),
            ('Torture of Silence',  352, 3),
            ('From these walls', 256, 4),
            ('One vs one', 214, 4),
            ('My Baby Just Cares for Me', 217, 5),
            ('He needs me', 150, 5),
            ('Hello Dolly!', 147, 6),
            ('Mame', 144, 6),
            ('The streets were waiting', 243, 7),
            ('Let me stay here', 171, 7),
            ('Bunny', 162, 8),
            ('In love with MDK', 188, 8),
            ('April "Snowdrop"', 158, 9),
            ('August Harvest ', 189, 9),
            ('Requiem In D Minor Introitus', 345, 10),
            ('Requiem In D Minor Sequentia', 380, 10);

INSERT INTO playlist  (name, publication_date)
	VALUES  ('Rap Playlist', '2018-08-10'),
            ('Rock playlist', '2012-04-13'),
            ('Jazz playlist', '1999-06-21'),
            ('Pop playlist', '2004-09-05'),
            ('Classic playlist', '2022-03-30'),
            ('Trending', '2019-05-19'),
            ('For dancing', '2010-10-21'),
            ('Relax', '2017-01-17');

INSERT INTO playlisttrack (track_id, playlist_id)
	VALUES  (1, 1),
            (2, 1),
            (3, 1),
            (4, 1),
            (5, 2),
            (6, 2),
            (7, 2),
            (8, 2),
            (9, 3),
            (10, 3),
            (11, 3),
            (12, 3),
            (13, 4),
            (14, 4),
            (15, 4),
            (16, 4),
            (17, 5),
            (18, 5),
            (19, 5),
            (20, 5),
            (1, 6),
            (16, 6),
            (15, 7),
            (13, 7),
            (19, 8),
            (20, 8),
            (18, 8);