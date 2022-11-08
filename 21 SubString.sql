SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

-- Start from the end of string
SELECT SUBSTRING('Hello World', - 3);

SELECT 
    SUBSTRING(title, 1, 15) AS 'short title'
FROM
    books;

SELECT 
    SUBSTR(author_lname, 1, 1), author_lname
FROM
    books;