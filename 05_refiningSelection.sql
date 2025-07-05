-- DISTINCT
    SELECT DISTINCT author_lname FROM books;
    SELECT DISTINCT author_fname, author_lname FROM books;

-- ORDER BY
    SELECT book_id, author_fname, author_lname FROM books
    ORDER BY author_fname;

    SELECT book_id, author_fname, author_lname FROM books
    ORDER BY author_fname DESC;

    SELECT book_id, author_fname, author_lname, pages FROM Books
    ORDER BY 4;

-- LIMIT
    SELECT book_id, title, released_year FROM books
    LIMIT 5;
    
    SELECT book_id, title, released_year FROM books
    ORDER BY released_year 
    LIMIT 5;

-- LIKE 
    SELECT title, author_fname, author_lname FROM books
    WHERE author_fname LIKE '%Da%';

    SELECT * FROM books
    WHERE author_fname LIKE '____';

    SELECT * FROM books
    WHERE author_fname LIKE '%n';

    SELECT * FROM books
    WHERE author_fname LIKE 'n%';

    SELECT * FROM books
    WHERE title LIKE '%\%%';

    SELECT * FROM books
    WHERE title LIKE '%\_%';

