--1
SELECT g.name, count(artist_id) FROM genre g JOIN genre_artist USING(genre_id) JOIN artist USING(artist_id) GROUP BY g.name;

--2
SELECT count(*) FROM track JOIN album USING(album_id) WHERE date_part('year', year) BETWEEN 2019 AND 2020;

--3
SELECT a.name, avg(duration) FROM album a JOIN track USING(album_id) GROUP BY a.name;

--4
SELECT name FROM artist
	LEFT JOIN (
		SELECT artist_id, album_id
		FROM artist_album
		JOIN album USING(album_id)
		WHERE date_part('year', year) = 2020) aa
	USING(artist_id) 
	WHERE aa.album_id IS NULL
	ORDER BY name
;

--5
SELECT c.name FROM collection c
	JOIN collection_track ct USING(collection_id)
	JOIN track USING(track_id)
	JOIN album USING(album_id)
	JOIN artist_album aa USING(album_id)
	JOIN artist a USING(artist_id)
	WHERE a.name = 'Metallica'
;

--6
SELECT a.name FROM album a
	JOIN artist_album USING(album_id)
	JOIN genre_artist USING(artist_id)
GROUP BY a.name
HAVING count(*) > 1
;

--7
SELECT name FROM track 
	LEFT JOIN collection_track USING(track_id) 
WHERE collection_id IS NULL
;

--8
SELECT a.name FROM artist a
	JOIN artist_album USING(artist_id)
	JOIN track USING(album_id)
WHERE duration = (SELECT min(duration) FROM track)
;

--9
SELECT a.name FROM album a
	JOIN track USING(album_id)
GROUP BY album_id
HAVING count(album_id) = (
	SELECT count(album_id) FROM track
	GROUP BY album_id
	ORDER BY count ASC LIMIT 1)
;