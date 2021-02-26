USE codeup_test_db;
SELECT * FROM albums WHERE release_date < 2000;

SELECT * FROM albums WHERE genre LIKE '%rock';

SELECT * FROM albums WHERE sales BETWEEN 20.5 AND 35;

SELECT * FROM albums WHERE artist IN ('Micheal Jackson', 'Whitney Houston', 'Eagles');

SELECT * FROM albums WHERE genre LIKE '198%' AND sales BETWEEN 20.5 AND 35;

