-- Frequent queries and data updates we expect:

-- Based on the following description for the web app: 
-- "These criteria should be: the dates (start, end) of booking or renting, 
-- the room capacity, the area, the hotel chain, the category of the hotel, 
-- the total number of rooms in the hotel, the price of the rooms. The user should 
-- be able to see the available choices when he/she changes the value of
-- any of these criteria."

-- 1) Indexing hotel chain ID:
CREATE INDEX index_hotel_chain ON Hotel (chain_id);

-- 2) Indexing hotel category:
CREATE INDEX index_hotel_category ON Hotel (category);

-- 3) Indexing check in/out dates for bookings and renting dates for rentings:
CREATE INDEX index_booking_dates ON Booking (check_in_date, check_out_date);
CREATE INDEX index_renting_dates ON Renting (renting_date);

-- 4) Indexing room capacity:
CREATE INDEX index_room_capacity ON Room (capacity);

-- 5) Indexing total number of rooms in the hotel:
CREATE INDEX index_hotel_number_of_rooms ON Hotel (numberOfRooms);

-- 6) Indexing price of the rooms:
CREATE INDEX index_room_price ON Room (price);

-- 7) Indexing hotel names:
CREATE INDEX index_hotel_name ON Hotel (name);

