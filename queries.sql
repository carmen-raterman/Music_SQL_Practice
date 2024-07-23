CREATE DATABASE record_company;
USE record_company;

CREATE TABLE bands (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE albums (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  release_year INT,
  band_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (band_id) REFERENCES bands(id)
);

CREATE TABLE songs (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

/* Band Names */
SELECT bands.name AS 'Band Name' FROM bands;

/* Finding Release Year (Not Null) */
SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

/* Get all Bands that have Albums */
SELECT DISTINCT bands.name AS 'Band Name'
FROM bands
JOIN albums ON bands.id = albums.band_id
WHERE albums.name IS NOT NULL
GROUP BY bands.id;

/* Bands that have No Albums */
SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY bands.id
HAVING COUNT(albums.id) = 0;

/* Get the longest album */
SELECT albums.name AS 'Name', albums.release_year AS 'Release Year', SUM(songs.length) AS 'Duration'
FROM albums
LEFT JOIN songs ON albums.id = songs.album_id
GROUP BY albums.id
ORDER BY Duration DESC
LIMIT 1;

/* Update the Release Year 8 */
UPDATE albums
SET release_year = 1986
WHERE id = 4;

/* Adding Drake :P */
INSERT INTO bands (name)
VALUES ('Drake');
INSERT INTO albums (name, release_year, band_id)
VALUES ('More Life', 2017, 8);

/* Deleting */
DELETE FROM albums
WHERE id = 19;

DELETE FROM bands
WHERE id = 8;

/* Average Length of All Songs */
SELECT AVG(length) AS 'Average Song Duration'
FROM songs;

/* Longest Song off Each Album */
SELECT albums.name AS 'Album', albums.release_year AS 'Release Year', MAX(songs.length) AS 'Duration'
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id;

/* Number of Songs for each Band */
SELECT bands.name AS 'Band', COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs on albums.id = songs.album_id
GROUP BY albums.band_id;






