CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	singer_name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_Genre (
	genre_id INTEGER REFERENCES Genre(id),
	singer_id INTEGER REFERENCES Singer(id),
	CONSTRAINT sing_gen PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	album_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_Album (
	album_id INTEGER REFERENCES Album(id),
	singer_id INTEGER REFERENCES singer(id),
	CONSTRAINT sing_alb PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	duration INTERVAL HOUR TO SECOND NOT NULL
);

CREATE TABLE IF NOT EXISTS Compilation (
	id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(60) NOT NULL,
	compilation_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Compilation (
	track_id INTEGER NOT NULL REFERENCES Track(id),
	compilation_id INTEGER NOT NULL REFERENCES Compilation(id),
	CONSTRAINT trk_comp PRIMARY KEY (track_id, compilation_id)
);
