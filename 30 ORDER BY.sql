-- ORDER BY come at the end

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname DESC;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname ASC;

DESC books;

SELECT title, pages FROM books ORDER BY pages;

SELECT title, pages FROM books ORDER BY released_year;

-- ORDER BY column number
SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4 DESC;

-- ORDER BY multi columns: sort by 1 column first, then sort by 2 column
SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year DESC;

-- ORDER BY result of other method
SELECT CONCAT(author_fname, ' ',author_lname) AS author FROM books ORDER BY author;
