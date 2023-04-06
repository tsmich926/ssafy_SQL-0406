-- users table 생성
CREATE TABLE users (
    
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);

CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    address TEXT NOT NULL
);


CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

INSERT INTO zoo VALUES 
('gorilla', 'omnivore', 215, 180, 5),
('tiger', 'carnivore', 220, 115, 3),
('elephant', 'herbivore', 3800, 280, 10),
('dog', 'omnivore', 8, 20, 1),
('panda', 'herbivore', 80, 90, 2),
('pig', 'omnivore', 70, 45, 5);





CREATE TABLE animals (
  animal_name TEXT NOT NULL,
  height INT NOT NULL,
  weight INT NOT NULL,
  age INT 
);


DROP TABLE users;

INSERT INTO users VALUES 
(),






INSERT INTO classmates(name, age,address)
VALUES ('홍길동',23,'서울');

INSERT INTO classmates
VALUES 
    ('김철수',30,'경기'),
    ('이영미',31,'강원'),
    ('박지성',26,'전라'),
    ('최지수',12,'충청'),
    ('정요한',28,'경상');


UPDATE classmates 
SET name ='김철수한무두루미',
    address='제주도'
WHERE rowid=2;

DELETE FROM classmates WHERE rowid=5;

DELETE FROM classmates WHERE name LIKE '%영%';

DELETE FROM classmates;




SELECT COUNT(*) FROM users; 
SELECT AVG(balance) FROM users;
SELECT DISTINCT country FROM users;
SELECT country, avg(balance) FROM users
WHERE country='전라북도';
SELECT country,avg(balance) FROM users GROUP BY country
ORDER BY avg(balance) DESC;
SELECT AVG(age) FROM users WHERE age>=30;
SELECT country,COUNT(*) FROM users GROUP BY country;
SELECT last_name,COUNT(*) FROM users 
GROUP BY last_name;



