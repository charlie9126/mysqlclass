CREATE DATABASE classsql;

CREATE TABLE productos (
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    surname    VARCHAR(100) NOT NULL,
    age     INT DEFAULT 0,
    init_date date,
    email VARCHAR(100) NOT NULL
);

INSERT INTO productos (name, surname, age, email) 
VALUES 
('carlos', 'diaz', 35, 'carlos@dev.com'),
('laura', 'brausi', 38, 'lau@dev.com'),
('antony', 'medin', 60, 'antony@dev.com'),
('cecil', 'alda', 59, 'cecil@dev.com');

select * from productos;

ALTER TABLE productos RENAME TO users;

select * from users;

INSERT INTO users (init_date) VALUES (2026-04-20);
INSERT INTO users (id, init_date) VALUES (2, 2026-04-19);

ALTER TABLE users 
MODIFY COLUMN init_date TIMESTAMP not null;

select * from users;

UPDATE users SET init_date = '2026-04-19' WHERE id = 1;
UPDATE users SET init_date = '2026-04-19' WHERE id = 2;
UPDATE users SET init_date = '2026-04-19' WHERE id = 3;
UPDATE users SET init_date = '2026-04-19' WHERE id = 4;

SELECT * FROM users;

UPDATE users SET init_date = '2026-01-01' WHERE id = 2;
UPDATE users SET init_date = '2026-02-10' WHERE id = 3;
UPDATE users SET init_date = '2026-03-12' WHERE id = 4;

SELECT * FROM users;
select name from users;
select id, name from users;

SELECT distinct * FROM users;

SELECT * FROM users WHERE age <= 40;
SELECT distinct age FROM users WHERE age <= 40;

SELECT * FROM users ORDER BY age;
USE classsql;

SHOW TABLES;

CREATE TABLE users (
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    surname    VARCHAR(100) NOT NULL,
    age     INT DEFAULT 0,
    init_date date,
    email VARCHAR(100) NOT NULL
);

UPDATE users SET init_date = '2026-04-19' WHERE id = 1;
UPDATE users SET init_date = '2026-01-01' WHERE id = 2;
UPDATE users SET init_date = '2026-02-10' WHERE id = 3;
UPDATE users SET init_date = '2026-03-12' WHERE id = 4;

SELECT * FROM users;

INSERT INTO users (name, surname, age, email) 
VALUES 
('carlos', 'diaz', 35, 'carlos@dev.com'),
('laura', 'brausi', 38, 'lau@dev.com'),
('antony', 'medin', 60, 'antony@dev.com'),
('cecil', 'alda', 59, 'cecil@dev.com');

SELECT * FROM users;

INSERT INTO users (name, surname, age, email) 
VALUES 
('armando', 'diaz', 35, 'carlos@dev.com'),
('laura', 'brausi', 38, 'lau@dev.com'),
('antony', 'medin', 60, 'antony@dev.com'),
('cecil', 'alda', 59, 'cecil@dev.com');

SHOW COLUMNS FROM users;
DESCRIBE users;