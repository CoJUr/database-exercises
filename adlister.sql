use ECOMM_STORE;

show tables;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(150),
    password  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

insert into users(email, password)
VALUES('EMAIL@EMAIL.COM', 'PASSWORD'),
      ('EMAIL1@EMAIL.COM', 'PASSword'),
      ('EMAIL1@EMAIL.COM', 'PASSwordd');


DROP TABLE IF EXISTS ad_user;


CREATE TABLE ad_user
(
    ad_id INT UNSIGNED NOT NULL,
    user_id VARCHAR(50)
);
INSERT INTO ad_user
values (1, 1),
       (2, 2),
       (3, 3);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    description varchar(255),
    category_id int unsigned,
    created_at datetime
);

insert into ads(title, description, category_id, created_at)
VALUES ('title1', 'descrip1', 1, '2021-10-10'),
       ('title2', 'descrip2', 2, '2021-11-11'),
       ('title3', 'descrip3', 3, '2021-12-12');


DROP TABLE IF EXISTS categories;

CREATE TABLE categories
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(250)
);

insert into categories values (1, 'dogs'),
                              (2, 'jobs'),
                              (3, 'wanted');

SELECT users.email FROM users
JOIN ad_user ON users.id = ad_user.user_id
JOIN ads on ad_user.ad_id = ads.id
WHERE ads.id = 1;

# given ad, what cat(s) does it belong to
SELECT categories.desription


select * from users;

select * from ad_user;

select * from ads;