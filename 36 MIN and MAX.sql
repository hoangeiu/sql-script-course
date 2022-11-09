SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

-- Find the lowest in the alphabet
SELECT MIN(author_lname) FROM books;
SELECT MIN(author_lname), MAX(author_lname) FROM books;