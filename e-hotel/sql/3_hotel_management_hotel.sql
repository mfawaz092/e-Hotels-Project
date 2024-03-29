INSERT INTO Hotel (hotel_id, category, name, address, email, 
				   numberofrooms, stars, chain_id) VALUES
				   -- Marriott International
(41, 'Standard', 'Marriott Downtown', '123 Yonge St, Toronto, CAN', 'info@marriottdowntown.com', 7, 3, 1),
(42, 'Standard', 'Marriott Lakeside', '456 Lakeshore Dr, Vancouver, CAN', 'info@marriottlakeside.com', 8, 3, 1),
(43, 'Economy', 'Marriott Uptown', '789 Elm St, Montreal, CAN', 'info@marriottuptown.com', 9, 2, 1),
(44, 'Economy', 'Marriott Central', '101 Main St, Calgary, CAN', 'info@marriottcentral.com', 10, 2, 1),
(45, 'Luxury', 'Marriott Parkside', '202 Park Ave, New York City, USA', 'info@marriottparkside.com', 11, 5, 1),
(46, 'Luxury', 'Marriott Riverside', '123 Riverside Dr, Los Angeles, USA', 'info@marriottriverside.com', 12, 5, 1),
(47, 'Standard', 'Marriott Oceanview', '456 Ocean Blvd, Miami, USA', 'info@marriottoceanview.com', 8, 4, 1),
(48, 'Standard', 'Marriott Harbourfront', '789 Harbour Dr, Boston, USA', 'info@marriottharbourfront.com', 9, 4, 1),
(49, 'Standard', 'Marriott Seaside', '101 Beach St, San Francisco, USA', 'info@marriottseaside.com', 10, 3, 1),

-- Four Seasons Hotels and Resorts
(50, 'Standard', 'Four Seasons Downtown', '123 Broadway, New York City, USA', 'info@fourseasonsdowntown.com', 8, 3, 2),
(51, 'Standard', 'Four Seasons Lakeside', '456 Lakeview Dr, Los Angeles, USA', 'info@fourseasonslakeside.com', 9, 3, 2),
(52, 'Economy', 'Four Seasons Uptown', '789 Elm St, Chicago, USA', 'info@fourseasonsuuptown.com', 10, 2, 2),
(53, 'Economy', 'Four Seasons Central', '101 Main St, Miami, USA', 'info@fourseasonsucentral.com', 11, 2, 2),
(54, 'Luxury', 'Four Seasons Parkside', '202 Park Ave, San Francisco, USA', 'info@fourseasonsparkside.com', 8, 5, 2),
(55, 'Luxury', 'Four Seasons Riverside', '123 Riverside Dr, Boston, USA', 'info@fourseasonsriverside.com', 9, 5, 2),
(56, 'Standard', 'Four Seasons Oceanview', '456 Ocean Blvd, Seattle, USA', 'info@fourseasonsoceanview.com', 10, 4, 2),
(57, 'Standard', 'Four Seasons Harbourfront', '789 Harbour Dr, Vancouver, CAN', 'info@fourseasonsharbourfront.com', 8, 4, 2),

-- Hilton Worldwide
(58, 'Standard', 'Hilton Downtown', '123 Main St, Toronto, CAN', 'info@hiltondowntown.com', 9, 3, 3),
(59, 'Standard', 'Hilton Lakeside', '456 Lakeview Dr, Vancouver, CAN', 'info@hiltonlakeside.com', 10, 3, 3),
(60, 'Economy', 'Hilton Uptown', '789 Elm St, Montreal, CAN', 'info@hiltonuptown.com', 11, 2, 3),
(61, 'Economy', 'Hilton Central', '101 Main St, Calgary, CAN', 'info@hiltoncentral.com', 12, 2, 3),
(62, 'Luxury', 'Hilton Parkside', '202 Park Ave, New York City, USA', 'info@hiltonparkside.com', 8, 5, 3),
(63, 'Luxury', 'Hilton Riverside', '123 Riverside Dr, Los Angeles, USA', 'info@hiltonriverside.com', 9, 5, 3),
(64, 'Standard', 'Hilton Oceanview', '456 Ocean Blvd, Miami, USA', 'info@hiltonoceanview.com', 10, 4, 3),
(65, 'Standard', 'Hilton Harbourfront', '789 Harbour Dr, Boston, USA', 'info@hiltonharbourfront.com', 8, 4, 3),
(66, 'Standard', 'Hilton Seaside', '101 Beach St, San Francisco, USA', 'info@hiltonseaside.com', 9, 3, 3),
(67, 'Standard', 'Hilton Downtown II', '123 Bay St, Toronto, CAN', 'info@hiltondowntown2.com', 10, 3, 3),


-- Best Western Hotels
(68, 'Standard', 'Best Western Downtown', '123 Yonge St, Toronto, CAN', 'info@bestwesterndowntown.com', 10, 3, 4),
(69, 'Standard', 'Best Western Lakeside', '456 Lakeshore Dr, Vancouver, CAN', 'info@bestwesternlakeside.com', 11, 3, 4),
(70, 'Economy', 'Best Western Uptown', '789 Elm St, Montreal, CAN', 'info@bestwesternuptown.com', 12, 2, 4),
(71, 'Economy', 'Best Western Central', '101 Main St, Calgary, CAN', 'info@bestwesterncentral.com', 8, 2, 4),
(72, 'Luxury', 'Best Western Parkside', '202 Park Ave, New York City, USA', 'info@bestwesternparkside.com', 9, 5, 4),
(73, 'Luxury', 'Best Western Riverside', '123 Riverside Dr, Los Angeles, USA', 'info@bestwesternriverside.com', 10, 5, 4),
(74, 'Standard', 'Best Western Oceanview', '456 Ocean Blvd, Miami, USA', 'info@bestwesternoceanview.com', 8, 4, 4),
(75, 'Standard', 'Best Western Harbourfront', '789 Harbour Dr, Boston, USA', 'info@bestwesternharbourfront.com', 9, 4, 4),
(76, 'Standard', 'Best Western Seaside', '101 Beach St, San Francisco, USA', 'info@bestwesternseaside.com', 10, 3, 4),
(77, 'Standard', 'Best Western Downtown II', '123 King St, Toronto, CAN', 'info@bestwesterndowntown2.com', 10, 3, 4),


-- Holiday Inn
(78, 'Standard', 'Holiday Inn Downtown', '123 Dundas St, Toronto, CAN', 'info@holidayinndowntown.com', 6, 3, 5),
(79, 'Standard', 'Holiday Inn Lakeside', '456 Rideau St, Ottawa, CAN', 'info@holidayinnlakeside.com', 7, 3, 5),
(80, 'Economy', 'Holiday Inn Uptown', '789 Elgin St, Montreal, CAN', 'info@holidayinnuptown.com', 8, 2, 5),
(81, 'Economy', 'Holiday Inn Central', '101 Bank St, Calgary, CAN', 'info@holidayinncentral.com', 9, 2, 5),
(82, 'Luxury', 'Holiday Inn Parkside', '202 Stanley St, New York City, USA', 'info@holidayinnparkside.com', 10, 5, 5),
(83, 'Luxury', 'Holiday Inn Riverside', '123 Riverside Dr, Los Angeles, USA', 'info@holidayinnriverside.com', 11, 5, 5),
(84, 'Standard', 'Holiday Inn Oceanview', '456 Ocean Ave, Miami, USA', 'info@holidayinnoceanview.com', 7, 4, 5),
(85, 'Standard', 'Holiday Inn Harbourfront', '789 Harbour Blvd, Boston, USA', 'info@holidayinnharbourfront.com', 8, 4, 5);

