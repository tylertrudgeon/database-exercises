USE codeup_test_db;

SELECT 'Released after 1991' AS 'Albums';
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums;

SELECT 'Genre of disco' AS 'Albums';
DELETE FROM albums WHERE genre = 'disco';
SELECT * FROM albums;

SELECT 'Named Michael Jackson' AS 'Artist';
DELETE FROM albums WHERE artist = 'Michael Jackson';
SELECT * FROM albums;