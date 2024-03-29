-- Aggregate query. Calculates the average star rating of each hotel chain.
SELECT hc.name AS hotel_chain_name, AVG(h.stars) AS avg_stars_per_chain
FROM Hotel h
JOIN HotelChain hc ON h.chain_id = hc.chain_id
GROUP BY hc.name;

-- Nested query. Retrieves the names of hotels with more than 10 rooms. 
SELECT name
FROM hotel
WHERE numberofrooms > 10;

-- Join query. Retrieves names of customers who booked a 'City View' room.
SELECT c.name
FROM customer c
JOIN booking b ON c.customer_id = b.customer_id
JOIN room r ON b.room_id = r.room_id
WHERE r.view = 'City View';

-- Nested query. Retrieves names of hotels with the maximum number of rooms. 
SELECT name
FROM hotel
WHERE numberofrooms = (
    SELECT MAX(numberofrooms)
    FROM hotel
);