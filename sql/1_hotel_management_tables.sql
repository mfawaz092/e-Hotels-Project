CREATE TABLE HotelChain (
    chain_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    numberOfHotels INTEGER NOT NULL
);

CREATE TABLE HotelChain_ADDRESS (
    chain_id INTEGER REFERENCES HotelChain(chain_id) ON DELETE CASCADE,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE HotelChain_EMAIL (
    chain_id INTEGER REFERENCES HotelChain(chain_id) ON DELETE CASCADE,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE HotelChain_PHONE (
    chain_id INTEGER REFERENCES HotelChain(chain_id) ON DELETE CASCADE,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE Hotel (
    hotel_id SERIAL PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    numberOfRooms INTEGER NOT NULL,
    stars INTEGER NOT NULL,
    chain_id INTEGER REFERENCES HotelChain(chain_id) ON DELETE CASCADE
);

CREATE TABLE Hotel_PHONE (
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE Owns (
    chain_id INTEGER REFERENCES HotelChain(chain_id) ON DELETE CASCADE,
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE,
    PRIMARY KEY (chain_id, hotel_id)
);

CREATE TABLE Manager (
    manager_id SERIAL PRIMARY KEY,
    ssn_sin VARCHAR(20) NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    ssn_sin VARCHAR(20) NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE
);

CREATE TABLE Employee_POSITION (
    employee_id INTEGER REFERENCES Employee(employee_id) ON DELETE CASCADE,
    ssn_sin VARCHAR(20) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    PRIMARY KEY (employee_id, ssn_sin)
);

CREATE TABLE Employs (
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE,
    manager_id INTEGER REFERENCES Manager(manager_id) ON DELETE CASCADE,
    PRIMARY KEY (hotel_id, manager_id)
);

CREATE TABLE Room (
    room_id SERIAL PRIMARY KEY,
    price NUMERIC(10, 2) NOT NULL,
    capacity INTEGER NOT NULL,
    extendable BOOLEAN NOT NULL,
    view VARCHAR(50) NOT NULL,
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE
);

CREATE TABLE Room_CONDITION (
    room_id INTEGER REFERENCES Room(room_id) ON DELETE CASCADE,
    Condition VARCHAR(255) NOT NULL
);

CREATE TABLE Room_AMENITIES (
    room_id INTEGER REFERENCES Room(room_id) ON DELETE CASCADE,
    Amenities VARCHAR(255) NOT NULL
);

CREATE TABLE Has (
    hotel_id INTEGER REFERENCES Hotel(hotel_id) ON DELETE CASCADE,
    room_id INTEGER REFERENCES Room(room_id) ON DELETE CASCADE,
    PRIMARY KEY (hotel_id, room_id)
);

CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    id_type VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    registration_date DATE NOT NULL
);

CREATE TABLE SearchesFor (
    room_id INTEGER REFERENCES Room(room_id) ON DELETE CASCADE,
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE,
    id_type VARCHAR(50) NOT NULL,
    PRIMARY KEY (room_id, customer_id, id_type)
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE,
    room_id INTEGER REFERENCES Room(room_id) ON DELETE CASCADE,
    CHECK (check_out_date >= check_in_date)
);

CREATE TABLE Books (
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE,
    id_type VARCHAR(50) NOT NULL,
    booking_id INTEGER REFERENCES Booking(booking_id) ON DELETE CASCADE,
    PRIMARY KEY (customer_id, id_type, booking_id)
);

CREATE TABLE Renting (
    renting_id SERIAL PRIMARY KEY,
    renting_date DATE NOT NULL,
    booking_id INTEGER REFERENCES Booking(booking_id) ON DELETE CASCADE,
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE,
    amount NUMERIC(10, 2) NOT NULL,
    renting_id INTEGER REFERENCES Renting(renting_id) ON DELETE CASCADE,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(50) NOT NULL
);

CREATE TABLE PaysFor (
    payment_id INTEGER REFERENCES Payment(payment_id) ON DELETE CASCADE,
    customer_id INTEGER REFERENCES Customer(customer_id) ON DELETE CASCADE,
    id_type VARCHAR(50) NOT NULL,
    renting_id INTEGER REFERENCES Renting(renting_id) ON DELETE CASCADE,
    PRIMARY KEY (payment_id, customer_id, id_type, renting_id)
);



