SELECT AVG(pages) FROM books;

SELECT released_year, AVG(stock_quantity), COUNT(*) FROM books GROUP BY released_year;