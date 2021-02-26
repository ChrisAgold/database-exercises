USE codeup_test_db;


# Where clause that we know!
SELECT * FROM albums WHERE release_date < 2000;

#Where with like!
SELECT * FROM albums WHERE genre LIKE 'R%CK';

#Where with like with numbers!
SELECT * FROM albums WHERE release_date LIKE '198%';

#Where with between
SELECT * FROM albums WHERE sales BETWEEN 20.5 AND 35;

#Where with in
SELECT * FROM albums WHERE artist IN ('Michael Jackson', 'Whitney Houston', 'Eagles');

#Where with AND
SELECT * FROM albums WHERE release_date LIKE '198%' AND sales BETWEEN 20.5 AND 35;

#WHERE with OR
SELECT * FROM albums WHERE artist LIKE 'M%' OR artist LIKE 'W%';

#WHERE with some grouping
SELECT * FROM albums WHERE sales > 25 AND (artist LIKE 'M%' OR release_date > 1970);

SELECT * FROM albums WHERE genre LIKE '%pop%' AND (artist IN ('Shania Twain', 'Dire Straits') OR sales > 20);


USE employees;

SELECT emp_no, title, to_date
FROM titles
WHERE to_date IS NOT NULL;