drop database if exists adlister_application;

create database adlister_application;

use adlister_application;

CREATE TABLE IF NOT EXISTS user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ad (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    description TEXT,
    user_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ad_category (
    category_id INTEGER UNSIGNED NOT NULL,
    ad_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (ad_id) REFERENCES ad(id)
);

INSERT INTO user (username, password, email) VALUES ('tyler', 12345, 'tyler.r.trudgeon@gmail.com');
INSERT INTO user (username, password, email) VALUES ('rex', 67890, 'rex@gmail.com');

INSERT INTO category (name) VALUE ('items');
INSERT INTO category (name) VALUE ('stuff');

INSERT INTO ad (title, description, user_id) VALUES ('this item for sale', 'something something something something', '1');
INSERT INTO ad (title, description, user_id) VALUES ('this item for sale blah blah', 'something something blah something something', '2');

INSERT INTO ad (title, description, user_id) VALUES ('more items', 'something ', '2');

INSERT INTO ad_category (ad_id, category_id) VALUES (1, 1), (1, 2);

SELECT u.email, ad.title
FROM ad
JOIN user u on ad.user_id = u.id
WHERE u.id = '2';

SELECT * FROM ad;

# adds belonging to a category

SELECT a.id, title, description, user_id, category_id
FROM ad as a
JOIN ad_category as ac on a.id = ac.ad_id
JOIN category as c on ac.category_id = c.id
WHERE a.id = 1;

SELECT a.id, title, description, user_id, category_id
FROM ad as a
JOIN ad_category ac on a.id = ac.ad_id
JOIN category as c on ac.category_id = c.id
WHERE a.id = 2;

# ads belonging to a user

SELECT username, a.title, a.description, c.name
FROM user
JOIN ad a on user.id = a.user_id
JOIN category c on a.category_id = c.id
WHERE user_id = '1';

SELECT username, a.title, a.description, c.name
FROM user
JOIN ad a on user.id = a.user_id
JOIN category c on a.category_id = c.id
WHERE user_id = '2';