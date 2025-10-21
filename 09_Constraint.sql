-- UNIQUE
    CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
    );

-- CHECK CONSTRAINT
    CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
    );
 
    CREATE TABLE palindromes (
     word VARCHAR(100) CHECK(REVERSE(word) = word)
    )