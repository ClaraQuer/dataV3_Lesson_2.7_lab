USE sakila;

## 1. 

SELECT c.name, COUNT(fc.film_id) AS num_films
FROM sakila.category c
JOIN sakila.film_category fc
USING (category_id)
GROUP BY (c.name)
ORDER BY num_films DESC;

## 2. 
SELECT s.first_name, SUM(p.amount) AS total_rung
FROM sakila.payment p
JOIN sakila.staff s 
USING (staff_id)
WHERE p.payment_date BETWEEN '2005-08-01' AND '2005-08-31' AND p.payment_date IS NOT NULL
GROUP BY s.staff_id;

## 3. 

SELECT COUNT(fa.film_id) AS num_of_movies, a.first_name, a.last_name
FROM sakila.film_actor fa
JOIN sakila.actor a 
	USING(actor_id)
GROUP BY actor_id
ORDER BY num_of_movies DESC
LIMIT 1;

## 4.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(rental_id) AS num_of_rentals
FROM sakila.payment p 
JOIN sakila.customer c 
	USING(customer_id)
GROUP BY customer_id
ORDER BY num_of_rentals DESC
LIMIT 1;

## 5. 

SELECT s.first_name, s.last_name, a.address
FROM sakila.staff s 
JOIN sakila.address a 
	USING(address_id);

## 6. 

SELECT title, COUNT(DISTINCT actor_id) AS num_of_actors
FROM sakila.film f
JOIN sakila.film_actor fa 
	USING (film_id)
GROUP BY film_id
ORDER BY film_id;

## 7. 

SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount) AS total_spent
FROM sakila.payment p 
JOIN sakila.customer c 
	USING(customer_id)
GROUP BY customer_id
ORDER BY c.last_name; 

## 8. 

# See exercise 1. 

