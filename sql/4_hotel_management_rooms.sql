WITH hotel_views AS (
    SELECT
        h.hotel_id,
        ARRAY['City View', 'Park View', 'Lake View', 'River View', 'Street View'] AS views,
        h.numberofrooms,
        ARRAY_AGG(DISTINCT r.view) AS existing_views
    FROM hotel h
    LEFT JOIN room r ON h.hotel_id = r.hotel_id
    GROUP BY h.hotel_id, h.numberofrooms
)
INSERT INTO room (price, capacity, extendable, view, hotel_id)
SELECT 
    CASE 
        WHEN h.category = 'Luxury' THEN 500.00 -- Luxury rooms price
        WHEN h.category = 'Standard' THEN 200.00 -- Standard rooms price
        WHEN h.category = 'Economy' THEN 100.00 -- Economy rooms price
    END AS price,
    CASE 
        WHEN h.category = 'Luxury' THEN 2 -- Luxury rooms capacity
        WHEN h.category = 'Standard' THEN 2 -- Standard rooms capacity
        WHEN h.category = 'Economy' THEN 1 -- Economy rooms capacity
    END AS capacity,
    CASE 
        WHEN random() < 0.75 THEN TRUE -- 75% of rooms are extendable
        ELSE FALSE
    END AS extendable,
    v.view,
    h.hotel_id
FROM hotel h
JOIN hotel_views hv ON h.hotel_id = hv.hotel_id
JOIN LATERAL unnest(hv.views) v(view) ON true
JOIN generate_series(1, hv.numberofrooms) AS s ON true;
