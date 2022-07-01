create database if not exists airbnb_db;

create TABLE IF NOT EXISTS Userz
(
    id      INT primary key auto_increment,
    email   varchar(255) NOT NULL UNIQUE,
    bio     TEXT,
    country VARCHAR(2)
);

insert into Userz (email, bio, country)
VALUES ('HELLO@WORLD.com', 'I love strangers', 'US');

select *
from Userz;

insert into Userz (email, bio, country)
VALUES ('Howdy@Universe.com', 'I love GALACTIC CITIZENS', 'US'),
       ('Hey@youguys.com', 'I love the Oregon coast!', 'NZ'),
       ('heya@mate.com', 'I love aligators', 'AU');

SELECT email, id
FROM Userz
WHERE country = 'US'
   OR id > 1
LIMIT 4;

SELECT *
from Userz
WHERE country = 'US'
  AND email like 'h%';


CREATE INDEX email_index ON Userz (email);

CREATE TABLE IF NOT EXISTS Rooms(
    id       INT AUTO_INCREMENT,
    street   VARCHAR(250),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) references Userz(id)
);
# OWNER_ID = FOREIGN KEY

INSERT INTO Rooms(owner_id, street)
VALUES (1, 'san diego sailboat'),
       (1, 'nantucket cottage'),
       (1, 'vail cabin'),
       (1, 'sf cardboard box');
# user with id = 1 owns all 4 properties



SELECT * FROM Userz
INNER JOIN Rooms
on Rooms.owner_id = Userz.id;

# may want to fetch all users even if they dont have an associated room:
SELECT * FROM Userz
LEFT JOIN Rooms
ON Rooms.owner_id = Userz.id;

# right join is opposite: would return rooms that have no owner


# SELECT Userz.id as user_id,
#        Rooms.id as room_id,
#        email,
#        street
# FROM Userz
# INNER JOIN Rooms.owner_id;