use sakila;
# 1.Get film ratings.
select rating from sakila.film;

#2.Get release years.
select release_year from sakila.film;

#3.Get all films with ARMAGEDDON in the title.
select title from sakila.film where title like("%ARMAGEDDON%");

#4.Get all films with APOLLO in the title
select title from sakila.film where title like("%Apollo%");

#5.Get all films which title ends with APOLLO
select title from sakila.film where title like("%Apollo");

#6 Get all films with word DATE in the title
select title from sakila.film where title like("% date%") or title regexp ('^date');

-- 7.Get 10 films with the longest title.
select max(char_length(title)) as max_length_title, title from sakila.film 
group by title 
order by max_length_title desc 
limit 10;

#8.Get 10 the longest films.
-- Option 1
SELECT 
    title as max_length_film, length
FROM
    sakila.film
ORDER BY length DESC
LIMIT 10;

-- Option 2
select max(title) as max_length_film, length from sakila.film 
group by title 
order by length desc
limit 10;
 select * from sakila.film;

#9.How many films include Behind the Scenes content?
SELECT
    COUNT(*) as the_no_of_movies
FROM
    sakila.film
WHERE
  special_features like '%Behind the Scenes%';

# 10.List films ordered by release year and title in alphabetical order
SELECT 
    title, release_year
FROM
    sakila.film
ORDER BY release_year , title ASC;


