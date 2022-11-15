SELECT title, rating FROM series JOIN reviews ON series.id = reviews.series_id;

SELECT 
    title, ROUND(AVG(rating), 2) AS avg_rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

SELECT first_name, last_name, rating FROM reviewers JOIN reviews ON reviewers.id = reviews.reviewer_id;

SELECT title as unreviewed_series FROM series LEFT JOIN reviews ON series.id = reviews.series_id WHERE rating IS NULL;

SELECT genre, ROUND(AVG(rating), 2) as avg_rating FROM series JOIN reviews ON series.id = reviews.series_id GROUP BY genre;

SELECT 
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(AVG(rating), 0) AS AVG,
    CASE
		WHEN AVG(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM
    reviewers
        LEFT JOIN
    reviews ON reviews.reviewer_id = reviewers.id
GROUP BY first_name , last_name;

-- USING IF 
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

--
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviews 
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewers.id;


