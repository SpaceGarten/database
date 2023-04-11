-- The title and release year and length, where length is between and 50 and 60 minutes with a rental rate of 2.99 order by title.

-- SELECT title, release_year, length 
--     FROM film 
--         WHERE length BETWEEN 50 AND 60 
--             AND rental_rate = 2.99 
--             ORDER BY title ;

-- The number of films where the length is at least 30 minutes and the rental rate is 4.99

-- SELECT COUNT(*)
--     FROM film
--         WHERE length <= 30
--         AND rental_rate = 4.99;    


-- The title, rental rate, for all moves that are rated "R" or "G"  that include delete scenes, ordre by te most expensive rentals first.

-- SELECT title, rental_rate, rating, special_features
--     FROM film
--         WHERE rating IN ('R','G')
--             AND special_features IN ('Deleted Scenes')
--             ORDER BY rental_rate DESC;

-- A list of all the first names and last names for actors that acted in the film "Polish Brooklyn", ordre by last name then first name.

-- SELECT title, first_name, last_name
--     FROM film, film_actor, actor
--         WHERE film.film_id = film_actor.film_id
--             AND film_actor.actor_id = actor.actor_id
--             AND title = "Polish Brooklyn"
--             ORDER BY last_name, first_name;

-- A list of the movies that "Vivien Bergen", acts in.
SELECT title, first_name, last_name
    FROM film, film_actor, actor
        WHERE film.film_id = film_actor.film_id
            AND film_actor.actor_id = actor.actor_id
            AND first_name = "Vivien"
            AND last_name = "Bergen";
