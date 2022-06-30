USE codeup_test_db;

DROP TABLE IF EXISTS books;


CREATE TABLE books (
                        id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                        title VARCHAR(250) NOT NULL DEFAULT 'UNTITLED',
                        author VARCHAR(100) NOT NULL DEFAULT 'Unknown',
                        date_published DATE NOT NULL,
                        description TEXT NOT NULL,
                        bestseller_weeks INT unsigned NOT NULL default 0,
                        PRIMARY KEY (id)
);


INSERT INTO books (title, author, date_published, description, bestseller_weeks)

VALUES ('What the fox', 'Juliana Pena', '1999-09-08', 'A fox bewilders a dog trying to catch it', 5),
       ('The sound of silence', '', '2000-01-10', 'Silence', '2'),
       ('Greed is good', 'Sam Capital', '2010-5-5', 'How to be a good little capitalist', 1);
