USE codeup_test_db;

SELECT 'From Pink Floyd' AS 'Album Names';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Of Sgt. Pepper''s Lonely Hearts Club Band' AS 'Release Date';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'For album titled Nevermind' AS 'Genre';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Released in the 90''s' AS 'Albums';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'With sales below 20 million.' AS 'Albums';
SELECT name FROM albums WHERE sales < 20.0;

SELECT 'With a genre of Rock' AS 'Albums';
SELECT name FROM albums WHERE genre = 'Rock';

