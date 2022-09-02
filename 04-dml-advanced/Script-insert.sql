


INSERT INTO genre(genre_name) VALUES
('пост-хардкор'),
('рок'),
('иностранный рок'),
('русский рэп'),
('мировая классика'),
('брейкбит'),
('альтернатива'),
('поп'),
('ню-метал'),
('танцевальная музыка'),
('j-pop'),
('j-rock')
;

INSERT INTO singer(singer_name) VALUES
('Noize MC'),
('FEVER 333'),
('Serj Tankian'),
('Wanima'),
('Staind'),
('The Prodigy'),
('Ляпис Трубецкой'),
('Papa Roach'),
('Babymetal'),
('Zebrahead'),
('Queen');

INSERT INTO singer_genre(singer_id, genre_id) VALUES
(1, 4),
(2, 1),
(3, 3),
(3, 5),
(4, 3),
(4, 11),
(5, 7),
(6, 6),
(7, 2),
(8, 9),
(9, 7),
(9, 12),
(10, 3),
(10, 7),
(10, 8),
(11, 2),
(11, 3)
;

INSERT INTO album(album_name, album_year) VALUES
('WRONG GENERATION', 2020),
('Everybody!!', 2018),
('Summer Trap!!', 2019),
('Розыгрыш', 2009),
('Cinematique Series: Illuminate', 2021),
('The Fat of the Land', 1997),
('Manifest', 2008),
('Матрёшка', 2013),
('Live Killers', 1979),
('The Illusion of Progress', 2008),
('Swerve', 2021),
('Новый альбом', 2013),
('Весёлые картинки', 2011),
('The Bonus Brothers', 2017)
;

INSERT INTO singer_album(album_id, singer_id) VALUES
(1, 2),
(2, 4),
(3, 4),
(4, 1),
(5, 3),
(6, 6),
(7, 7),
(8, 7),
(9, 11),
(10, 5),
(11, 8),
(12, 1),
(13, 7),
(14, 10)
;

INSERT INTO track(track_name, album_id, duration) VALUES
('BITE BACK', 1, '00:03:10'),
('BLOCK IS ON FIRE', 1, '00:02:16'),
('Juice Up!! Theme', 2, '00:01:53'),
('Natsu No Dokokae', 3, '00:03:58'),
('Моё море', 4, '00:02:33'),
('Выдыхай', 4, '00:03:12'),
('New Like Glass', 5, '00:03:14'),
('Smack My Bitch Up', 6, '00:05:43'),
('Firestarter', 6, '00:04:39'),
('Манифест', 7, '00:03:48'),
('12 обезьян', 7, '00:02:52'),
('Воины света', 8, '00:03:42'),
('Танцуй', 8, '00:01:53'),
('We Will Rock You', 9, '00:03:29'),
('Killer Queen', 9, '00:01:59'),
('This is it', 10, '00:03:44'),
('Swerve', 11, '00:02:48'),
('Мы Хотим Танцевать', 12, '00:04:44'),
('Я верю', 13, '00:03:07'),
('Blue Light Special', 14, '00:03:25')
;

INSERT INTO compilation(compilation_name, compilation_year) VALUES
('Greatest Hits', 1981),
('Лучшее. Часть 2: Свежий ветер', 2016),
('Their Law: The Singles 1990-2005', 2005),
('Music for Boobies', 2016),
('The Greatest Hits. Vol. 2', 2010),
('КИНОпробы. Рэп-трибьют', 2010),
('Transformers: Revenge Of The Fallen The Album', 2009),
('Lunapark', 2012)
;

INSERT INTO track_compilation(track_id, compilation_id) VALUES
(14, 1),
(15, 1),
(10, 2),
(11, 2),
(12, 2),
(8, 3),
(9, 3),
(5, 5),
(6, 5),
(18, 6),
(19, 8),
(16, 7),
(20, 4)
;
