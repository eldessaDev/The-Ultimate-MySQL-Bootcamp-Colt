-- COUNT
    SELECT count(*) FROM books;

    SELECT count(author_fname) FROM books;

    SELECT count(DISTINCT(author_fname)) FROM books;

-- GROUP BY
    SELECT author_lname, COUNT(*) AS books_written FROM books
    GROUP BY author_lname
    ORDER BY books_written;

    SELECT concat(author_fname, ' ', author_lname) AS Author, count(*) FROM books
    GROUP BY Author;

-- MIN, MAX
    SELECT min(released_year) FROM books;
    SELECT max(pages) FROM books;

    SELECT min(author_lname) FROM books;
    SELECT max(author_lname) FROM books;

    SELECT min(author_lname), max(author_lname)  FROM books;

-- MIN, MAX with GROUP BY
    SELECT author_lname,min(released_year) AS Min_Released_Day , max(released_year) AS Max_Released_Day FROM books
    GROUP BY author_lname;

-- SUBQUERIES
    SELECT * FROM books
    WHERE pages = (SELECT min(pages)  FROM books);

    SELECT title, pageS FROM books
    WHERE pages = (SELECT MAX(pages) FROM books);
    
    SELECT title FROM books
    WHERE released_year = (SELECT min(released_year) FROM books);

-- SUM
    SELECT sum(pages) FROM books;

    SELECT author_lname, sum(pages) FROM books
    GROUP BY author_lname;

-- AVG
    SELECT avg(released_year) FROM books;
    SELECT avg(pages) FROM books;

    SELECT released_year, avg(stock_quantity), count(*) AS How_Many_Books FROM books
    GROUP BY released_year;