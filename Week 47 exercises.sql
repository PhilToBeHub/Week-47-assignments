-- 1.b
USE SAKILA;

-- 1.c
SELECT * FROM actor;

-- 1.d
SELECT * FROM actor WHERE last_name = "CAGE";

-- 1.e 
SELECT * FROM actor WHERE NOT first_name = "ZERO" AND NOT first_name = "NICK";

-- 1.f
SELECT * FROM actor WHERE first_name IN ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI"); 

-- 1.g
SELECT * FROM actor WHERE actor_id BETWEEN 50 AND 150;

-- 1.h 
SELECT * FROM actor WHERE first_name LIKE "C%";

-- 1.i 
SELECT * FROM actor ORDER BY first_name;

-- 1.j
SELECT * FROM actor WHERE last_name LIKE "K%" ORDER BY last_name;

-- 1.k 
SELECT COUNT(*) FROM actor;

-- 1.l 
SELECT DISTINCT COUNT(*) FROM actor WHERE first_name LIKE "M%";

-- 1.m 
SELECT * FROM film;
SELECT * FROM film_category;
SELECT * FROM category;
SELECT * FROM film_category WHERE category_id IN ("11");

-- 1.n 
SELECT f.film_id, f.category_id FROM film_category AS f;

-- 2.a 
-- INSERT INTO actor (first_name, last_name) VALUES ("Philip", "Lindberg");

-- 2.b 
-- SELECT * FROM actor WHERE first_name = "Philip" AND last_name = "Lindberg";
-- INSERT INTO `sakila`.`film_actor` (`actor_id`, `film_id`) VALUES ('201', '10');
-- INSERT INTO `sakila`.`film_actor` (`actor_id`, `film_id`) VALUES ('201', '26');
-- INSERT INTO `sakila`.`film_actor` (`actor_id`, `film_id`) VALUES ('201', '150');
-- INSERT INTO `sakila`.`film_actor` (`actor_id`, `film_id`) VALUES ('201', '19');
-- INSERT INTO `sakila`.`film_actor` (`actor_id`, `film_id`) VALUES ('201', '92');

-- 2.c 
-- UPDATE actor SET first_name = 'Anders' WHERE actor_id = 201;
-- UPDATE actor SET last_name = 'And' WHERE actor_id = 201;
-- SELECT * FROM actor WHERE first_name = "Anders";

-- 2.d 
-- DELETE FROM sakila.actor WHERE actor_id = 201;

-- 3.a 
SELECT * FROM category;

-- 3.b
SELECT * FROM film
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON category.category_id = film_category.category_id
WHERE film_category.category_id = 11;

SELECT f.film_id, f.title, fc.film_id, ca.category_id, ca.name FROM film AS f
JOIN film_category AS fc ON f.film_id = fc.film_id
JOIN category AS ca ON fc.category_id = ca.category_id
WHERE fc.category_id = 11;