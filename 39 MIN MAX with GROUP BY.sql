-- Find the year each author published their first book
SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;

-- Find the year each author published their lasted book
SELECT author_lname, MAX(released_year) FROM books GROUP BY author_lname;

-- Find the year each author published their first and lasted book
SELECT 
    author_lname,
    COUNT(*) AS books_written,
    MIN(released_year) AS lasted_year,
    MAX(released_year) AS earliest_year,
    MAX(pages) AS longest_page_count
FROM
    books
GROUP BY author_lname;


SELECT 
    author_lname,
    author_fname,
    COUNT(*) AS books_written,
    MIN(released_year) AS lasted_year,
    MAX(released_year) AS earliest_year
FROM
    books
GROUP BY author_lname, author_fname;
