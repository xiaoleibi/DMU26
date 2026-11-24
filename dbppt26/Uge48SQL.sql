-- Uge48SQL.sql
 
-- ---------------------------------------------------------------------------
 
use album;
-- ---------------------------------------------------------------------------
SELECT id, title, artist
FROM album
WHERE id = 1;

 
-- ---------------------------------------------------------------------------
SELECT artist, label
FROM album
WHERE label = 'Columbia';

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
SELECT label, artist
FROM album
ORDER BY artist DESC;

UPDATE album
SET label = 'Polydor'
WHERE artist = 'Jimi Hendrix';
 
-- ---------------------------------------------------------------------------
-- SET SQL_SAFE_UPDATES = 0;
--  if you have error for update.
-- 
-- ---------------------------------------------------------------------------
SELECT id, artist, label
FROM album
WHERE artist = 'Jimi Hendrix';

UPDATE album
SET label = 'Poly'
WHERE artist = 'Jimi Hendrix';


SELECT id, artist, label
FROM album
WHERE artist = 'Jimi Hendrix';

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
SELECT *
FROM album
WHERE id = 18;

DELETE FROM album
WHERE id = 18;

INSERT INTO album (id, title, artist, label, released)
VALUES ('18', 'Kind of Blue', 'Miles Davis', 'Columbia', '1959-08-17');
-- ---------------------------------------------------------------------------
 
-- ---------------------------------------------------------------------------
ALTER TABLE album
ADD COLUMN email VARCHAR(50);

SELECT id, title, email FROM album LIMIT 3;

 
-- ---------------------------------------------------------------------------
ALTER TABLE album
DROP COLUMN email;

 SELECT * FROM album LIMIT 3;

-- ---------------------------------------------------------------------------
-- DROP TABLE album;

 


 -- ---------------------------------------------------------------------------
-- INNER JOIN: query-eksempel
-- ---------------------------------------------------------------------------
SELECT album.artist, album.id,
       track.title, track.track_number
FROM album
INNER JOIN track
    ON album.id = track.album_id
ORDER BY album.id, track.track_number;

-- ---------------------------------------------------------------------------
