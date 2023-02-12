CREATE TABLE IF NOT EXISTS genre(
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS artist(
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS album(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year INTERVAL YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS collection(
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_created INTERVAL YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS track(
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    duration INTERVAL MINUTE TO SECOND NOT NULL,
    album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS genre_artist(
    genre_id INTEGER REFERENCES genre(genre_id),
    artist_id INTEGER REFERENCES artist(artist_id),
    CONSTRAINT genre_artist_key PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS artist_album(
    artist_id INTEGER REFERENCES artist(artist_id),
    album_id INTEGER REFERENCES album(album_id),
    CONSTRAINT artist_album_key PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collection_track(
    collection_id INTEGER REFERENCES collection(collection_id),
    track_id INTEGER REFERENCES track(track_id),
    CONSTRAINT collection_track_key PRIMARY KEY (collection_id, track_id)
);