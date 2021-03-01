USE codeup_test_db;
ALTER TABLE albums ADD UNIQUE (artist, name);
INSERT INTO albums (artist, name, release_date, sales, genre) VALUES('Fleetwood Mac', 'Rumours', 2012, 3, 'Electronica');






