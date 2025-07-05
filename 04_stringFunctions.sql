-- CONCAT
    SELECT concat('H', 'E');

    SELECT concat(title, ' - ', author_fname) FROM books;
    SELECT concat(author_fname , ' ' , author_lname) AS 'Full Name' FROM books;
    SELECT concat_ws(' - ',author_fname, author_lname ) AS 'Author_Name' FROM books;

-- SUBSTRING()
    SELECT substring('Hello World', 7);
    SELECT substring('Hello World', 1, 4);
    SELECT substring('Hello World', -1);

    SELECT substring(title, 1, 15) FROM books
    WHERE book_id  = 7;

-- CONCAT() + SUBSTRING()
    SELECT concat(substring(title, 1, 10), '...') FROM books;

-- REPLACE()
    SELECT replace('Hello World', 'Hell', '#$%@');
    SELECT replace(title, ' ', '-') FROM books;

-- REVERSE()
    SELECT reverse('Hello World');
    SELECT reverse(author_fname) FROM books;

-- CHAR_LENGTH()
    SELECT char_length('Hello World');
    SELECT title, char_length(TITLE) AS Length FROM books;

-- UPPER() LOWER()
    SELECT upper('Hello World');
    SELECT lower('Hello World');
    SELECT upper(title) FROM books;
    select concat('I LOVE ', UPPER(title), '!!!') FROM books;

-- LEFT()
    SELECT LEFT('OMGasDSDA', 3);

-- REPEAT()
    SELECT repeat('HA', 4);