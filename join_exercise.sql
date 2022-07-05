create database if not exists join_test_db;

use join_test_db;

CREATE TABLE if not exists roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);
CREATE TABLE if not exists users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id) VALUES
                                             ('you', 'you@example.com', 2),
                                             ('me', 'me@example.com', 2);

INSERT INTO users (name, email) VALUES
                                    ('ghost', 'ghost@examle.com');

INSERT INTO users (name, email, role_id) VALUES
                                             ('them', 'them@they.com', 2);

select * from users;

# inner join:
SELECT roles.name, roles.id as roles_id, users.name, users.role_id as user_role_id
FROM users JOIN roles
ON users.role_id = roles.id;

# left join:
SELECT roles.name, roles.id as roles_id, users.name
FROM roles LEFT JOIN users
                ON users.role_id = roles.id;

# right join
SELECT roles.name, roles.id as roles_id, users.name
FROM roles RIGHT JOIN users
                     ON users.role_id = roles.id;

# use count and appropriate join type to get a list of roles with the amount users given it.
select COUNT(*) as users_total, roles.name role_name, roles.id as roles_id
FROM users Left JOIN roles
ON users.role_id = roles.id
GROUP BY roles.id;