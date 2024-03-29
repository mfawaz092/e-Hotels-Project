-- View 1: Availible rooms per area
CREATE OR REPLACE VIEW view_available_rooms AS
SELECT 
    h.address AS area,
    COUNT(*) AS available_rooms
FROM 
    room r
    JOIN hotel h ON r.hotel_id = h.hotel_id
WHERE 
    r.room_id NOT IN (
        SELECT room_id 
        FROM booking 
        WHERE check_in_date <= CURRENT_DATE AND check_out_date >= CURRENT_DATE
    )
GROUP BY 
    h.address;

-- View 2: Capacity of all rooms in hotel
CREATE OR REPLACE VIEW viewroom_capacity AS
SELECT 
    h.hotel_id,
    h.name AS hotel_name,
    SUM(r.capacity) AS total_capacity
FROM 
    hotel h
    JOIN room r ON h.hotel_id = r.hotel_id
GROUP BY 
    h.hotel_id, h.name;