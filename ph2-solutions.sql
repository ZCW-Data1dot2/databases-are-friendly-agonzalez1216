/* SQL "Sakila" database query exercises - phase 1 */

-- Database context
USE sakila;

-- Your solutions...
1a.select first_name, last_name from actor;
1b.select upper(concat(first_name," ", last_name)) as 'Actor Name' from actor;
2a.select * from actor where first_name = 'joe';
2c.select * from actor where last_name like '%li%' order by last_name, first_name;
2b.select * from actor where last_name like '%gen%'
    -> ;
2d.select country_id, country from country where country in ('Afghanistan', 'Bangladesh', 'China');
3a.alter table actor add column middle_name VARCHAR(45) AFTER first_name;
3b.alter table actor modify column middle_name blob;
3c.alter table actor drop column middle_name;
4a.select count(last_name), last_name from actor group by(last_name);
4b.select count(last_name), last_name from actor group by(last_name) having count(last_name)>=2;
4C.update actor set first_name = 'HARPO' WHERE first_name = 'GROUCHO' and last_name = 'WILLIAMS';
4D.select * from actor where last_name = 'williams';
5a.show create table address;
6a.select first_name, last_name, address, address2 from staff join address using(address_id);
6b.select sum(amount), first_name, last_name from payment join staff using(staff_id) group by staff_id;
6c.select title, count(actor_id) from film join film_actor using(film_id) group by title;
6d.select count(*) from inventory join film using(film_id) where title = 'Hunchback Impossible';
6e.select sum(amount), first_name, last_name from payment join customer using(customer_id) group by customer_id order by last_name;
7a.select * from film join language using(language_id) where name = 'English' and title in (select title from film where(title like 'K%' or title like 'Q%'));
7b.select first_name, last_name from actor join film_actor using(actor_id) where film_id = (select film_id from film where title = 'alone trip');
7c.select first_name, last_name, email from customer join address using(address_id) join city using(city_id) join country using(country_id) where country='Canada';
7d.select * from film join film_category using(film_id) join category using(category_id) where name = 'Family';
7f.select * from sales_by_store;
7e.select title, count(film_id) from film join inventory using(film_id) join rental using(inventory_id) group by title order by count(film_id) desc;
7g.select store_id, city, country from store join address using(address_id) join city using(city_id) join country using(country_id);
7h.select name, sum(amount) from category join film_category using(category_id) join inventory using(film_id) join rental using(inventory_id) join payment using(customer_id) group by name order by sum(amount) desc limit 5;
8a.create view top_5_genres_gross_rev as select name, sum(amount) from category join film_category using(category_id) join inventory using(film_id) join rental using(inventory_id) join payment using(customer_id) group by name order by sum(amount) desc limit 5;
8b.select * from top_5_genres_gross_rev;
8c.drop view top_5_genres_gross_rev;
                                                                                                      
