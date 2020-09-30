-- 1
CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(220),
  age INTEGER, 
  height INTEGER,
  city VARCHAR(220),
  favorite_color VARCHAR(220) );
--   2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES('Erick Montiel', 22, 172, 'Leon', 'Red'),
('Batman', 55, 187, 'Gotham', 'Black'),
('Jason', 21, 175, 'Orem', 'Blue'),
('Alex', 12, 160, 'Spanish Fork', 'Green'),
('Dany', 14, 165, 'Spanish Fork', 'Red');
-- 3
SELECT * FROM person 
ORDER BY height DECS;
-- 4
SELECT * FROM person 
ORDER BY height Asc;
-- 5
SELECT * FROM person 
ORDER BY age DECS;
-- 6
SELECT * FROM person 
WHERE age  > 20;
-- 7
SELECT * FROM person
WHERE age = 18;
-- 8
SELECT * FROM person 
WHERE age < 20 OR > 30; 
-- 9
SELECT * FROM person 
WHERE age != 27;
-- 10 
SELECT * FROM person 
WHERE favorite_color != 'red';
-- 11
SELECT * FROM person 
WHERE favorite_color != 'red' AND !='blue';
-- 12
SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';
-- 13
SELECT * FROM person 
WHERE favorite_color IN ('orange', 'green', 'blue');
-- 14
SELECT * FROM person 
WHERE favorite_color IN ('yellow', 'purple')


-- 1
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(200),
  product_price INTEGER,
  quantity INTEGER
);
-- 2
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES (0, 'banana', 2.00, 5),
(1,'ice cream', 5, 10),
(2, 'chips', 3, 12),
(3, 'soda', 1, 8),
(4, 'burger patty', 10, 20);
-- 3
SELECT * FROM orders;
-- 4
SELECT SUM(quantity) FROM orders;
-- 5
SELECT SUM(product_price * quantity) FROM orders;
-- 6
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 2;

-- 1
INSERT INTO artist (name)
VALUES ('xxxtentacion'),
('skimask'),
('scrim');
-- 2
SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;
-- 3
SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;
-- 4
SELECT * FROM artist 
WHERE name  LIKE 'Black%';
-- 5
SELECT * FROM artist 
WHERE name LIKE '%Black%';

-- 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';
-- 2
SELECT MAX(birth_date) FROM employee;
-- 3
SElECT MIN(birth_date) FROM employee;
-- 4
SELECT * FROM employee WHERE reports_to = 2;
-- 5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';
-- 2
SELECT MAX(total) FROM invoice;
-- 3
SELECT MIN(total) FROM invoice;
-- 4
SELECT * FROM invoice 
WHERE total > 5;
-- 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;
-- 6
SElECT COUNT(*) FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');
-- 7
SELECT AVG(total) FROM invoice;
-- 8
SELECT SUM(total) FROM invoice;