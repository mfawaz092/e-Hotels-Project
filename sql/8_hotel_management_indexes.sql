-- Frequent queries and data updates we expect:

-- 1) Customers searching for available rooms (primary function of our app). Therefore,
-- we will index available rooms based on room ID and check in/out dates.
CREATE INDEX index_available_rooms ON Booking (check_in_date, check_out_date, room_id);

-- 2) Employees will be dealing alot with customer information for bookings
-- and rentings. Therefore, we will index customer IDs for faster retrieval and updates.
CREATE INDEX index_booking_customer_id ON Booking (customer_id);

-- 3) Customers will most likely be interested in prices. Therefore, we will index room 
-- prices.
CREATE INDEX index_room_price ON Room (price);
