USE codeup_test_db;

TRUNCATE TABLE books;

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES ('To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'This is a book about birds.', 0),
       ('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'This is a book about a great thing.', 10),
       ('Harry Potter and the Sorcerer`s Stone', 'J.K. Rowling', '1997-06-26', 'This is a book about sorcerers.', 70),
       ('The Hobbit', 'J.R.R. Tolkien', '1937-07-21', 'This is a book about hobbits.', 5),
       ('What the fox', 'Juliana Pena', '1999-09-08', 'A fox bewilders a dog trying to catch it', 5),
       ('The sound of silence', '','2000-01-10', 'Silence', '2'),
       ('Greed is good', 'Sam Capital', '2010-5-5', 'How to be a good little capitalist', 1);