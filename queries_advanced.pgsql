--1
SELECT g.name, (SELECT count(artist_id) FROM genre_artist ga WHERE ga.genre_id = g.genre_id) AS a FROM genre g;

--2
SELECT count(*) FROM track WHERE album_id IN (SELECT album_id FROM album WHERE date_part('year', year) BETWEEN 2019 AND 2020);

--3
SELECT a.name, (SELECT avg(duration) FROM track t WHERE t.album_id = a.album_id) FROM album a;

--4
SELECT name FROM artist WHERE artist_id NOT IN
(SELECT artist_id FROM artist_album WHERE album_id IN 
(SELECT album_id FROM album a WHERE date_part('year', year) = 2020));

--5
SELECT name FROM collection WHERE collection_id IN
(SELECT collection_id FROM collection_track WHERE track_id IN 
(SELECT track_id FROM track WHERE album_id IN
(SELECT album_id FROM album WHERE album_id IN
(SELECT album_id FROM artist_album WHERE artist_id IN
(SELECT artist_id FROM artist WHERE name = 'Metallica')))));

--6
SELECT name FROM album WHERE album_id IN
(SELECT album_id FROM artist_album WHERE artist_id IN
(SELECT artist_id FROM genre_artist GROUP BY artist_id HAVING count(*) > 1));

--7
SELECT name FROM track WHERE track_id NOT IN (SELECT DISTINCT track_id FROM collection_track);

--8
SELECT name FROM artist WHERE artist_id IN
(SELECT artist_id FROM artist_album WHERE album_id IN
(SELECT album_id FROM track WHERE duration =
(SELECT min(duration) FROM track)));

--9
SELECT name FROM album WHERE album_id IN (SELECT album_id FROM 
(SELECT album_id, count(album_id) FROM track GROUP BY album_id) a 
WHERE count = (SELECT min(count) FROM (SELECT album_id, count(album_id) FROM track GROUP BY album_id) a)); 