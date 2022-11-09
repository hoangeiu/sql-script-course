SELECT author_lname, author_fname, SUM(pages) FROM books GROUP BY author_lname, author_fname;

SELECT author_lname, author_fname, COUNT(*), SUM(released_year) FROM books GROUP BY author_lname, author_fname;