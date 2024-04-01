-- Room search services:

-- Searches for rooms based on certain criteria
SELECT
    r.room_id,
    r.price,
    r.capacity,
    r.view,
    h.name AS hotel_name,
    h.category AS hotel_category,
    hc.name AS hotel_chain,
    hc.numberOfHotels AS total_rooms_in_chain
FROM
    Room r
    JOIN Hotel h ON r.hotel_id = h.hotel_id
    JOIN HotelChain hc ON h.chain_id = hc.chain_id
WHERE
    r.price <= 500           -- Maximum price 
    AND h.category = 'Luxury'       -- Hotel category 
    AND hc.name = 'Mariott International'             -- Hotel chain 
    AND r.capacity >= 1   -- Minimum capacity 
    AND hc.numberOfHotels >= 8; -- Total rooms in the hotel chain
	
-------------------------------------------------------------------------------
-- Booking Services:

-- Creates a booking for a specified customer
WITH booking_params AS (
    SELECT
        'Passport' AS id_type,          -- ID type of customer
        1 AS customer_id,               -- customer ID
        '2024-04-01'::DATE AS check_in, -- Check-in date
        '2024-04-03'::DATE AS check_out,-- Check-out date
        45 AS room_id                   -- room ID
)
INSERT INTO Booking (booking_date, check_in_date, check_out_date, customer_id, room_id)
SELECT
    CURRENT_DATE,                        -- Booking date (current date)
    bp.check_in,                         -- Check-in date
    bp.check_out,                        -- Check-out date
    bp.customer_id,                      -- ID of the customer making the booking
    bp.room_id                           -- ID of the room being booked
FROM
    booking_params bp;

-- Retrieves bookings for a specified customer
SELECT
    b.booking_id,
    b.booking_date,
    b.check_in_date,
    b.check_out_date,
    r.room_id,
    r.price,
    r.capacity,
    r.view,
    h.name AS hotel_name,
    h.address AS hotel_address
FROM
    Booking b
JOIN
    Room r ON b.room_id = r.room_id
JOIN
    Hotel h ON r.hotel_id = h.hotel_id
WHERE
    b.customer_id = :customer_id;

------------------------------------------------------------------------------------
-- Customer Services:

-- Add a new customer 
INSERT INTO Customer (id_type, name, address, registration_date)
VALUES (:id_type, :name, :address, :registration_date);

-- Update a customer's information
UPDATE Customer
SET name = :new_name, address = :new_address
WHERE customer_id = :customer_id;

-- Delete a customer
DELETE FROM Customer
WHERE customer_id = :customer_id;

-------------------------------------------------------------------------------
-- Employee Services:

-- Add a new employee
INSERT INTO Employee (ssn_sin, name, address, hotel_id)
VALUES (:ssn_sin, :name, :address, :hotel_id);

-- Update an employee's information
UPDATE Employee
SET name = :new_name, address = :new_address
WHERE employee_id = :employee_id;

-- Delete an employee 
DELETE FROM Employee
WHERE employee_id = :employee_id;

--------------------------------------------------------------------------------
-- Hotel Services:

-- Add a new hotel
INSERT INTO Hotel (category, name, address, email, numberOfRooms, stars, chain_id)
VALUES (:category, :name, :address, :email, :numberOfRooms, :stars, :chain_id);

-- Update a hotel's information
UPDATE Hotel
SET name = :new_name, address = :new_address, email = :new_email, stars = :new_stars
WHERE hotel_id = :hotel_id;

-- Delete a hotel
DELETE FROM Hotel
WHERE hotel_id = :hotel_id;

------------------------------------------------------------------------------
-- Room Services:

-- Add a new room
INSERT INTO Room (price, capacity, extendable, view, hotel_id)
VALUES (:price, :capacity, :extendable, :view, :hotel_id);

-- Update a room's information
UPDATE Room
SET price = :new_price, capacity = :new_capacity, extendable = :new_extendable, view = :new_view
WHERE room_id = :room_id;

-- Delete a room
DELETE FROM Room
WHERE room_id = :room_id;

----------------------------------------------------------------------------
-- Renting Services:

-- Turn a booking into a renting
INSERT INTO Renting (renting_date, booking_id, customer_id)
SELECT CURRENT_DATE, :booking_id, :customer_id
FROM Booking
WHERE booking_id = :booking_id;

-- Directly do a renting
INSERT INTO Renting (renting_date, booking_id, customer_id)
VALUES (CURRENT_DATE, DEFAULT, :customer_id);

-----------------------------------------------------------------------------
-- Payment Services:

-- Insert customer payment for a renting
INSERT INTO Payment (customer_id, amount, renting_id, payment_method, payment_status)
VALUES (:customer_id, :amount, :renting_id, :payment_method, :payment_status);


