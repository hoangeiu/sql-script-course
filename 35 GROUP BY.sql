-- GROUP BY summarizes or aggreagtes identical data into single rows

SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- THIS GROUP BY is wrong because it show just the first title of author_lname of GROUP BY;
SELECT author_lname, title FROM books GROUP BY author_lname;


