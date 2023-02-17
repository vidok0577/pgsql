SELECT name, year FROM album WHERE date_part('year', year) = 2018;

SELECT name, duration FROM track WHERE duration = (SELECT max(duration) FROM track);

SELECT name, duration FROM track GROUP BY name, duration HAVING MAX(duration) > '00:03:50';

SELECT name, year_created  FROM collection WHERE date_part('year', year_created) BETWEEN 2018 AND 2020;

SELECT name FROM artist WHERE name NOT LIKE '% %';

SELECT name FROM track WHERE name ILIKE ANY(ARRAY['%мой%', '%my%']);