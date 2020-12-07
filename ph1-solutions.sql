/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...
1.select * from actor where first_name='Scarlett'
2.select * from actor where last_name='Johansson';
3.select count(distinct last_name) from actor;
4.select count(last_name), last_name from actor group by(last_name) having count(last_name)=1;
5.select count(last_name), last_name from actor group by(last_name) having count(last_name)>1;
6.select max(actor_id) from(select count(actor_id) mycount, actor_id from film_actor group by actor_id) as result
7.select f.film_id, f.title, s.store_id, i.inventory_id 
    -> from inventory as i join store as s using(store_id) join film as f using(film_id)
    -> where f.title='Academy Dinosaur' and s.store_id = 1;
8.INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id)
    ->  VALUES(NOW(), 1, 1, 1);
9.select rental_duration from film where film_id=1;
11.select c.name, avg(length) from film as f join film_category as fc using(film_id) join category c using(category_id) group by c.name;
10 select avg(length) from film
12 because of repeating film_ids?
