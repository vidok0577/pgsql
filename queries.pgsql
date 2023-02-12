SELECT name, year FROM album WHERE date_part('year', year) = 2018;

SELECT name, duration FROM track WHERE duration = (SELECT max(duration) FROM track);

SELECT name, duration FROM track GROUP BY name, duration HAVING MAX(duration) > '00:03:50';

--какой запрос правильный? этот?
--SELECT name, year_created  FROM collection WHERE date_part('year', year_created) >= 2018 AND date_part('year', year_created) <= 2020;
--или этот? этот мне кажется будет быстрее работать, но в верхнем можно задать именно диапазон
SELECT name, year_created  FROM collection WHERE date_part('year', year_created) IN (2018, 2019, 2020);

SELECT name FROM artist WHERE name NOT LIKE '% %';

SELECT name FROM track WHERE name ILIKE ANY(ARRAY['%мой%', '%my%']);