
-- 1. See the first 10 rows
SELECT * FROM restaurants LIMIT 10;

-- 2. How many restaurants do we have in total?
SELECT COUNT(*) AS total_restaurants FROM restaurants;

-- 3. How many restaurants per country?
SELECT country, COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY country
ORDER BY restaurant_count DESC;

-- 4. Top 10 cities by number of restaurants
SELECT city, COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 10;

-- 5. Average rating (only restaurants that have at least 1 vote)
SELECT ROUND(AVG(rating), 2) AS average_rating
FROM restaurants
WHERE votes > 0;

-- 6. Average rating by price range (1 = cheap, 4 = expensive)
SELECT price_range, ROUND(AVG(rating), 2) AS average_rating
FROM restaurants
WHERE votes > 0
GROUP BY price_range
ORDER BY price_range;

-- 7. Does online delivery affect the rating?
SELECT has_online_delivery, ROUND(AVG(rating), 2) AS average_rating
FROM restaurants
WHERE votes > 0
GROUP BY has_online_delivery;

-- 8. Top 10 restaurants by rating (with a minimum number of votes,
--    so a restaurant with just 1 vote doesn't unfairly top the list)
SELECT restaurant_name, city, rating, votes
FROM restaurants
WHERE votes >= 100
ORDER BY rating DESC, votes DESC
LIMIT 10;

-- 9. Most "voted for" (popular) restaurants
SELECT restaurant_name, city, votes
FROM restaurants
ORDER BY votes DESC
LIMIT 10;

-- 10. Restaurants that both take online delivery AND table booking
SELECT COUNT(*) AS both_services
FROM restaurants
WHERE has_online_delivery = 'Yes' AND has_table_booking = 'Yes';

-- 11. Cheapest and most expensive average cost-for-two, per country
SELECT country,
       MIN(cost_for_two) AS min_cost,
       MAX(cost_for_two) AS max_cost,
       ROUND(AVG(cost_for_two), 0) AS avg_cost
FROM restaurants
GROUP BY country
ORDER BY avg_cost DESC;

