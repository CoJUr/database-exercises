use codeup_test_db;

show tables;

DROP TABLE IF EXISTS authors;

CREATE TABLE authors
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
                                               ('Douglas', 'Adams'),
                                               ('Mark', 'Twain'),
                                               ('Kurt', 'Vonnegut');

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes
(
    id                INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(50) DEFAULT 'NONE',
    author_last_name  VARCHAR(100) NOT NULL,
    content           TEXT         NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.'),
       ('Douglas', 'Adams', 'Don''t panic'),
       ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
       ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt', 'Vonnegut', 'Clothes make the man. Naked people have little or no influence on society.')

describe quotes;
select * from quotes;

describe authors;
select * from authors;

# author can have many quotes (douglas adams)    quote belongs to an author
# author -> quotes = one-to-many   should make a FK on quotes to ref a row on authors

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        author_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (author_id) REFERENCES authors (id)
);

# Seeds
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

select * from quotes;
select * from authors;

# categorize quotes by related topic -> 1. create topics table

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO topics(name)
VALUES ('Space and Time'),
       ('Humor'),
       ('Office Life'),
       ('Hitchhiker''s Guide to the Galaxy');

select * from topics;


# quote can be related to many or 0 topics. topic can have many or 0 quotes
# = many-to-many relationship. need and associative table between the 2.
# many-to-many should

# 2. relate topics to quotes
