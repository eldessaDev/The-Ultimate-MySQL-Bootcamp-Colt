CREATE DATABASE instagram_db;
USE instagram_db;
SHOW TABLES;

-- CREATE USER SCHEMA
    CREATE TABLE USERS(
        id INT PRIMARY KEY AUTO_INCREMENT,
        username VARCHAR(250) UNIQUE NOT NULL,
        created_at TIMESTAMP DEFAULT NOW()
    );
    INSERT INTO USERS(USERNAME) 
    VALUES('BlueTheCat'),
        ('CharlieBrown'),
        ('ColtSteele');
        
    DESCRIBE USERS;
    SELECT * FROM USERS;

-- CREATE PHOTOS SCHEMA
    CREATE TABLE PHOTOS(
        id INT AUTO_INCREMENT PRIMARY KEY,
        image_url VARCHAR(250) NOT NULL,
        user_id int NOT NULL,
        created_at TIMESTAMP DEFAULT NOW(),
        FOREIGN KEY(user_id) REFERENCES users(id)
    );
    INSERT INTO PHOTOS(image_url, user_id)
    VALUES('/ASDFASD76', 1),
        ('/ASDFASD78', 2),
        ('/ASDFASD55', 2);
        
    DESC PHOTOS;
    SELECT * FROM PHOTOS;

-- CREATE COMMENTS SCHEMA
    CREATE TABLE COMMENTS(
        id INT AUTO_INCREMENT PRIMARY KEY,
        COMMENT_TEXT VARCHAR(250) NOT NULL,
        user_id INT NOT NULL,
        photo_id INT NOT NULL,
        create_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
    );
    INSERT INTO COMMENTS(comment_text, user_id, photo_id)
    VALUES('Meow!', 1, 2),
        ('Amazing Shot!', 3, 2),
        ('I <3 This', 2, 1);

    DESC COMMENTS;
    SELECT * FROM COMMENTS;

-- CREATE LIKES SCHEMA
    CREATE TABLE LIKES(
        user_id INT NOT NULL,
        photo_id INT NOT NULL,
        created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
    );
    INSERT INTO LIKES(user_id, photo_id)
    VALUES (1,1),
        (2,1),
        (1,2),
        (1,3),
        (3,3);

	-- Wont work because of primary key Constraint
	-- INSERT INTO LIKES(user_id, photo_id)
	-- VALUES (1,1);
       
DESCRIBE LIKES;
    SELECT * FROM LIKES;

    -- CREATE FOLLOWERS SCHEMA
    CREATE TABLE FOLLOWS(
        follower_id INT NOT NULL,
        followed_id INT NOT NULL,
        created_at TIMESTAMP DEFAULT NOW(),
        FOREIGN KEY(follower_id) REFERENCES users(id),
        FOREIGN KEY(followed_id) REFERENCES users(id),
        PRIMARY KEY(follower_id, followed_id)
    );
    INSERT INTO FOLLOWS(follower_id, followed_id)
    VALUES(1,2),
        (1,3),
        (3,1),
        (2,3);

    DESC FOLLOWS;
    SELECT * FROM FOLLOWS;

-- CREATE TAGS, PHOTO_id, SCHEMA
    CREATE TABLE TAGS(
        id INT AUTO_INCREMENT PRIMARY KEY,
        tag_name VARCHAR(250) UNIQUE,
        created_at TIMESTAMP DEFAULT NOW()
        );
    INSERT INTO TAGS(tag_name)
    VALUES('adorable'),
        ('cute'),
        ('sunrise');
    SELECT * FROM TAGS;

    CREATE TABLE photo_tags(
        photo_id INT NOT NULL,
        tag_id INT NOT NULL,
        FOREIGN KEY(photo_id) REFERENCES photos(id),
        FOREIGN KEY(tag_id) REFERENCES tags(id),
        PRIMARY KEY(photo_id, tag_id)
    );
    INSERT INTO PHOTO_TAGS(photo_id, tag_id)
    VALUES (1,1),
        (1,2),
        (2,3),
        (3,2);
    SELECT * FROM PHOTO_TAGS;

    SHOW TABLES;