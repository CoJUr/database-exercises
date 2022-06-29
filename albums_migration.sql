USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
                       id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                       artist VARCHAR(70) DEFAULT 'NONE',
                       name VARCHAR(150) NOT NULL,
                       release_date YEAR NOT NULL,
                       sales FLOAT UNSIGNED,
                       genre VARCHAR(80) NOT NULL,
                       PRIMARY KEY (id)
);