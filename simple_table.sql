USE codeup_test_db;

DROP TABLE IF EXISTS paints;

CREATE TABLE paints (
                        id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                        color VARCHAR(50) DEFAULT 'NONE',
                        name VARCHAR(150) NOT NULL,
                        sales FLOAT UNSIGNED,
                        genre VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);

INSERT INTO paints (color, name, sales, genre)
VALUES ('blue', 'Skyblue', 3.5, 'Home improvement'),
       ('red', 'Passion red', 10, 'Hobbies'),
       ('green', 'Teal green', 0, 'Home improvement');
