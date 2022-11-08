SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 10;

-- LIMIT Range
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 0, 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 3, 2;

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5, 7;