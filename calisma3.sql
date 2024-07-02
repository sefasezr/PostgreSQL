--SELECT DISTINCT replacement_cost FROM film;

-- SELECT COUNT (*) FROM actor
-- WHERE first_name ='Penelope';           --Count Penelope olanları saydı

-- SELECT COUNT(*) FROM actor
-- WHERE first_name LIKE 'A%'                 --Count ismi A ile başlayanları saydı

--SELECT COUNT (DISTINCT first_name) FROM actor  --tekrarsız isimleri alıp eleman sayisini sayar

--SELECT COUNT (DISTINCT length) FROM film;   --birbirinden farklı kaç uzunluk oldugunu bulmamıza yaradı

--ODEV 4
-- --1)
-- SELECT DISTINCT replacement_cost FROM film;
-- --2)
-- SELECT COUNT(DISTINCT replacement_cost) FROM film;
-- --3)
-- SELECT COUNT(title) FROM film
-- WHERE title LIKE 'T%' AND rating ='G';
-- --4)
-- SELECT COUNT(country) FROM country
-- WHERE length(country) = 5;
-- --5)
-- SELECT COUNT(city) FROM city
-- WHERE city ILIKE '%r';









