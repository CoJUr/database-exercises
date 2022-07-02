use mimo;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id int unsigned not null,
    name varchar(50) NOT NULL DEFAULT 'UNNAMED',
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS enrolled;

CREATE TABLE enrolled (
                          student_id INT unsigned not null,
                          class varchar(50) NOT NULL DEFAULT 'PLACEHOLDER',
                          PRIMARY KEY (class)
);


DROP TABLE IF EXISTS artists;

CREATE TABLE artists(artist_id         INT NOT NULL,
                    name                VARCHAR(50) NOT NULL DEFAULT 'UNKNOWN',
                    PRIMARY KEY (artist_id)
                    );

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(artist_id           INT UNSIGNED NOT NULL,
                    title               VARCHAR(50) NOT NULL
                   );