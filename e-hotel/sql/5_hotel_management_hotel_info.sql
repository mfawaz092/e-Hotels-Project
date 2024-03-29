-- Insert addresses for each hotel chain
INSERT INTO hotelchain_address (chain_id, address)
VALUES
    (1, '123 Main St, Toronto, CAN'),
    (2, '456 Lakeview Dr, Vancouver, CAN'),
    (3, '789 Elm St, Montreal, CAN'),
    (4, '101 Park Ave, New York City, USA'),
    (5, '202 Riverside Dr, Los Angeles, USA');

-- Insert email addresses for each hotel chain
INSERT INTO hotelchain_email (chain_id, email)
VALUES
    (1, 'marriott@example.com'),
    (2, 'fourseasons@example.com'),
    (3, 'hilton@example.com'),
    (4, 'bestwestern@example.com'),
    (5, 'holidayinn@example.com');

-- Insert phone numbers for each hotel chain
INSERT INTO hotelchain_phone (chain_id, phone)
VALUES
    (1, '+1-800-123-4567'), -- Marriott
    (2, '+1-800-234-5678'), -- Four Seasons
    (3, '+1-800-345-6789'), -- Hilton
    (4, '+1-800-456-7890'), -- Best Western
    (5, '+1-800-567-8901'); -- Holiday Inn

-- Insert phone number for every hotel
INSERT INTO public.hotel_phone (hotel_id, phone)
SELECT hotel_id, CONCAT('555-', LPAD(FLOOR(RANDOM() * 900 + 100)::text, 3, '0'), '-', LPAD(FLOOR(RANDOM() * 9000 + 1000)::text, 4, '0'))
FROM public.hotel;