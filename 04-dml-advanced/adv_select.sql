--количество исполнителей в каждом жанре
SELECT g.genre_name, COUNT(singer_id)  FROM singer_genre sg 
LEFT JOIN genre g ON sg.genre_id = g.id 
GROUP BY g.genre_name;

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT album_name, COUNT(track.id) FROM album a
LEFT JOIN track ON a.id = track.album_id
WHERE album_year = 2019 OR album_year = 2020
GROUP BY album_name;

--средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(track.duration) FROM album a
LEFT JOIN track ON a.id = track.album_id
GROUP BY album_name;

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT singer_name FROM singer s
JOIN singer_album sa ON s.id = sa.singer_id
JOIN album a ON a.id = sa.album_id
WHERE a.album_year != 2020
GROUP BY singer_name;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT compilation_name FROM compilation c 
JOIN track_compilation tc ON c.id = tc.compilation_id
JOIN track t ON t.id = tc.track_id
JOIN album a ON t.album_id = a.id 
JOIN singer_album sa ON sa.album_id = a.id 
JOIN singer ON sa.singer_id = singer.id 
WHERE singer.singer_name = 'Ляпис Трубецкой'
GROUP BY compilation_name;

--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album_name FROM album a 
JOIN singer_album sa ON a.id = sa.album_id 
JOIN singer s ON s.id = sa.singer_id 
JOIN singer_genre sg ON sg.singer_id = s.id 
GROUP BY album_name
HAVING COUNT(sg.genre_id) > 1;

--наименование треков, которые не входят в сборники
SELECT track_name  FROM track t
LEFT JOIN track_compilation tc ON t.id = tc.track_id
WHERE tc.compilation_id IS NULL; 

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
-- Продолжительность выведена для подтверждения двойного совпадения.
SELECT singer_name, t.duration FROM singer s 
JOIN singer_album sa ON s.id = sa.singer_id 
JOIN album a ON a.id = sa.album_id 
JOIN track t ON t.album_id = a.id
WHERE t.duration = (SELECT MIN(duration) FROM track); 

--название альбомов, содержащих наименьшее количество треков.
SELECT album_name FROM album a 
LEFT JOIN track t ON t.album_id = a.id 
WHERE t.album_id IN (SELECT album_id FROM track
					 GROUP BY album_id
					 HAVING COUNT(id) = (
					 	SELECT COUNT(id) FROM track
					 	GROUP BY album_id
					 	ORDER BY COUNT LIMIT 1))
ORDER BY a.album_name;
