-- NOT EQUAL !=
    SELECT * FROM books WHERE released_year != 2017;

    SELECT title, author_lname FROM books 
    WHERE author_lname  != 'Gaiman';

-- NOT LIKE
    SELECT title FROM books
    WHERE title NOT LIKE '% %';

    SELECT title, author_fname, author_lname FROM books
    WHERE author_fname NOT LIKE 'da%';

    SELECT title FROM books 
    WHERE title NOT LIKE '%e%';

-- GREATER THAN
    SELECT * FROM books
    WHERE pages > 500;

    SELECT title, pages, released_year FROM books 
    WHERE pages > 500;

-- lESS THAN
    SELECT title, released_year FROM books
    WHERE released_year < 2000;

    SELECT title, released_year FROM books
    WHERE released_year < 2000
    ORDER BY  released_year;

    SELECT title, pages FROM books
    WHERE pages < 200;


    SELECT title, released_year FROM books
    WHERE released_year < 2000;

    SELECT title, released_year FROM books
    WHERE released_year < 2000
    ORDER BY  released_year;

    SELECT title, pages FROM books
    WHERE pages < 200;

    SELECT title, released_year FROM books
    WHERE released_year >= 2009;

    SELECT title, released_year FROM books
    WHERE released_year <= 2009
    ORDER BY released_year DESC;

-- LOGICAL AND
    SELECT title, author_lname, released_year FROM books
    WHERE released_year > 2010 AND author_lname = 'Eggers';

    SELECT title, author_lname, released_year FROM books
    WHERE released_year > 2010 AND author_lname = 'Eggers' AND title LIKE '%novel%';

    SELECT title, pages FROM books
    WHERE char_length(title) > 30 
    AND pages > 500;

-- LOGICAL OR
    SELECT title, author_lname, released_year FROM books
    WHERE released_year > 2010 OR author_lname = 'Eggers';

    SELECT title, pageS FROM books
    WHERE pages < 200
    OR title like '%stories%';

-- BETWEEN
    SELECT * FROM books
    WHERE released_year BETWEEN 2004 AND 2015
    ORDER BY released_year;

    SELECT title, pages FROM books
    WHERE pages BETWEEN 200 AND 300;

-- COMPARING DATES
    SELECT * FROM people WHERE birthtime 
    BETWEEN CAST('12:00:00' AS TIME) 
    AND CAST('16:00:00' AS TIME);
 
    SELECT * FROM people WHERE HOUR(birthtime)
    BETWEEN 12 AND 16;

-- IN OPERATOR
    SELECT titlE, author_lname FROM books
    WHERE author_lname IN('Carver', 'Lahiri', 'Smith' );

    SELECT title, author_lname FROM books
    WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- CASE
    SELECT title, released_year,
    CASE
	    WHEN released_year >= 2000 THEN 'modern liy'
    ELSE '20TH century lit'
    END AS genre
    FROM books;

    SELECT title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
            WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
                WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
                    WHEN stock_quantity <= 140 THEN '****'    ELSE '*****'
    END AS stock
    FROM books
    ORDER BY stock;

-- IS NULL
    SELECT * FROM books
    WHERE author_lname IS NULL;

 