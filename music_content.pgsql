INSERT INTO genre VALUES(1, 'Rock');
INSERT INTO genre VALUES(2, 'Punk');
INSERT INTO genre VALUES(3, 'Classic');
INSERT INTO genre VALUES(4, 'Jazz');
INSERT INTO genre VALUES(5, 'Pop');

INSERT INTO artist VALUES(1, 'Nirvana');
INSERT INTO artist VALUES(2, 'Metallica');
INSERT INTO artist VALUES(3, 'The Offspring');
INSERT INTO artist VALUES(4, 'Wolfgang Amadeus Mozart');
INSERT INTO artist VALUES(5, 'Johann Sebastian Bach');
INSERT INTO artist VALUES(6, 'Shakira');
INSERT INTO artist VALUES(7, 'Plan Lomonosova');
INSERT INTO artist VALUES(8, 'Nomy');
INSERT INTO artist VALUES(9, 'The Beatles');
INSERT INTO artist VALUES(10, 'Aerosmith');

INSERT INTO genre_artist VALUES(1, 1);
INSERT INTO genre_artist VALUES(1, 2);
INSERT INTO genre_artist VALUES(1, 3);
INSERT INTO genre_artist VALUES(2, 3);
INSERT INTO genre_artist VALUES(3, 4);
INSERT INTO genre_artist VALUES(3, 5);
INSERT INTO genre_artist VALUES(5, 6);
INSERT INTO genre_artist VALUES(1, 7);
INSERT INTO genre_artist VALUES(2, 7);
INSERT INTO genre_artist VALUES(1, 8);
INSERT INTO genre_artist VALUES(1, 9);
INSERT INTO genre_artist VALUES(1, 10);

INSERT INTO album VALUES(1, 'Song Or Suicide', '2008');
INSERT INTO artist_album VALUES(8, 1);
INSERT INTO album VALUES(2, 'Load', '1996');
INSERT INTO artist_album VALUES(2, 2);
INSERT INTO album VALUES(3, 'Reload', '1997');
INSERT INTO artist_album VALUES(2, 3);
INSERT INTO album VALUES(4, 'Americana', '1998');
INSERT INTO artist_album VALUES(3, 4);
INSERT INTO album VALUES(5, 'Nevermind', '1991');
INSERT INTO artist_album VALUES(1, 5);
INSERT INTO album VALUES(6, 'Waka Waka', '2018');
INSERT INTO artist_album VALUES(6, 6);
INSERT INTO album VALUES(7, 'Greatest hits', '2019');
INSERT INTO artist_album VALUES(10, 7);
INSERT INTO album VALUES(8, 'Best of the best', '2020');
INSERT INTO artist_album VALUES(2, 8);
INSERT INTO album VALUES(9, 'Title album', '2018');
INSERT INTO artist_album VALUES(4, 9);
INSERT INTO album VALUES(10, 'Name album', '2018');
INSERT INTO artist_album VALUES(5, 10);
INSERT INTO album VALUES(11, 'Name album 11', '2021');
INSERT INTO artist_album VALUES(7, 11);

INSERT INTO track VALUES(1, 'The Kids Arenot Alright', '2:59', 4);
INSERT INTO track VALUES(2, 'Load', '3:57', 2);
INSERT INTO track VALUES(3, 'Reload', '5:21', 3);
INSERT INTO track VALUES(4, 'My Track4', '3:44', 5);
INSERT INTO track VALUES(5, '?????? Track5', '6:35', 7);
INSERT INTO track VALUES(6, 'Track6 ??????', '5:57', 6);
INSERT INTO track VALUES(7, 'Track7 My', '4:59', 9);
INSERT INTO track VALUES(8, 'myTrack8', '3:24', 10);
INSERT INTO track VALUES(9, 'Track9', '3:00', 4);
INSERT INTO track VALUES(10, 'Trackmy10', '5:37', 2);
INSERT INTO track VALUES(11, 'Track11', '6:53', 8);
INSERT INTO track VALUES(12, 'Track12', '4:26', 8);
INSERT INTO track VALUES(13, 'Track My 13', '7:37', 7);
INSERT INTO track VALUES(14, 'Track14', '3:17', 6);
INSERT INTO track VALUES(15, '??????Track15', '7:51', 5);
INSERT INTO track VALUES(16, 'TrackMy16', '2:59', 1);
INSERT INTO track VALUES(17, 'Track17', '5:29', 10);

INSERT INTO collection VALUES(1, 'Collection1', '2018');
INSERT INTO collection VALUES(2, 'Collection2', '2017');
INSERT INTO collection VALUES(3, 'Collection3', '2019');
INSERT INTO collection VALUES(4, 'Collection4', '2021');
INSERT INTO collection VALUES(5, 'Collection5', '2018');
INSERT INTO collection VALUES(6, 'Collection6', '2020');
INSERT INTO collection VALUES(7, 'Collection7', '2016');
INSERT INTO collection VALUES(8, 'Collection8', '2015');

INSERT INTO collection_track VALUES(1, 15);
INSERT INTO collection_track VALUES(2, 10);
INSERT INTO collection_track VALUES(3, 9);
INSERT INTO collection_track VALUES(4, 7);
INSERT INTO collection_track VALUES(5, 2);
INSERT INTO collection_track VALUES(6, 8);
INSERT INTO collection_track VALUES(7, 4);
INSERT INTO collection_track VALUES(8, 3);
