DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;

CREATE TABLE IF NOT EXISTS roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
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
('adam', 'adam@example.com', 2),
('vitold', 'vitold@example.com', 3),
('jonas', 'jonas@example.com', 3),
('sam', 'sam@example.com', null),
('jim', 'jim@example.com', null),
('buford', 'buford@example.com', null),
('den', 'den@example.com', 2),
('long', 'long@example.com', 2),
('tim', 'tim@example.com', 2);

DESCRIBE users;
DESCRIBE roles;

SELECT * FROM users;
SELECT * FROM roles;






