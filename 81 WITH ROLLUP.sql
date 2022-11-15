-- The GROUP BY clause permits a WITH ROLLUP modifier that causes summary output to include extra rows that represent higher-level 
-- (that is, super-aggregate) summary operations.
SELECT * FROM full_reviews;

SELECT AVG(rating) FROM full_reviews;

SELECT title, AVG(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT title, COUNT(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year, genre WITH ROLLUP;






