-- LIKE is used for searching
-- % mean anything
-- _ (underscore) mean exactly one character
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE title LIKE '%:%';


-- Find authors that have fname contains 4 characters
SELECT * FROM books WHERE author_fname LIKE '____';
-- Find authors that have fname contains 5 characters
SELECT * FROM books WHERE author_fname LIKE '_____';

SELECT * FROM books WHERE author_fname LIKE '_a_';
SELECT * FROM books WHERE author_fname LIKE '%a%';

SELECT * FROM books WHERE author_fname LIKE '%n';

-- Use \ (backsplash) when searching contain % or _
SELECT * FROM books WHERE title Like '%\%%';
SELECT * FROM books WHERE title Like '%\_%';