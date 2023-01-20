use sakila;
/*Select all the actors with the first name ‘Scarlett’.*/

select* from sakila.actor
WHERE first_name= 'Scarlett';

/* How many films (movies) are available for rent 
and how many films have been rented?
*/
SELECT COUNT(film_id) FROM sakila.film;

SELECT COUNT(rental_rate)/1000 from sakila.film;

SELECT COUNT(rental_rate)- COUNT(film_id)
from sakila.film;


/* longest Movei*/

SELECT
max(length) FROM sakila.film;

/* shortest move*/

SELECT
 min(length) FROM sakila.film;
 
/* What is the average movie expressed in hours and minutes0
*/
SELECT AVG(length) FROM sakila.film;

/* How many distinct (different) actors' last names are there?
*/
SELECT DISTINCT last_name FROM sakila.actor;

/* Since how many days has the company been 
operating (check DATEDIFF() function)? 
*/
select datediff(DAYS, '2014-09-25', '2006-02-15');

/*Show rental info with additional columns month and 
weekday. Get 20 results.*/

 select rental_duration,last_update, release_year,
 rental_rate from sakila.film
 limit 20;
 
 /*Add an additional column day_type with values 'weekend' and 'workday' 
 depending on the rental day of the week..*/
 .........
 ..........
 .........
 
  /*Get release years.*/
   select film_id, title, release_year from sakila.film;
  
   
    /*Get all films with ARMAGEDDON in the title*/
    
select* from sakila.film
where title='ARMAGEDDON';

/*Get all films which title ends with APOLLO.*/
select* from sakila.film
where title='APOLLO%';

/*Get 10 the longest films*/

SELECT* from sakila.film
ORDER BY length
LIMIT 10;

/*How many films include Behind the Scenes content?*/

select* from film
where (special_features='Behind the Scenes');