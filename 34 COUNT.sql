-- COUNT(*) mean count row
SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

-- COUNT with DISTINCT
SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT released_year) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';