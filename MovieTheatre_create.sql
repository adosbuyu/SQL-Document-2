CREATE TABLE Customer_buyuhe (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Employee_buyuhe (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    Position VARCHAR(100)
);

CREATE TABLE Movie_buyuhe (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    director VARCHAR(100)
);

CREATE TABLE Auditorium_buyuhe (
    auditorium_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    capacity INTEGER
);

CREATE TABLE Screening_buyuhe (
    screening_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    auditorium_id INTEGER,
    Time TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movie_buyuhe(movie_id),
    FOREIGN KEY (auditorium_id) REFERENCES Auditorium_buyuhe(auditorium_id)
);

CREATE TABLE Reservation_buyuhe (
    reservation_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    screening_id INTEGER,
    seatNumber VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customer_buyuhe(customer_id),
    FOREIGN KEY (screening_id) REFERENCES Screening_buyuhe(screening_id)
);

CREATE TABLE Ticket_buyuhe (
    ticket_id SERIAL PRIMARY KEY,
    reservation_id INTEGER,
    price NUMERIC(10,2),
    FOREIGN KEY (reservation_id) REFERENCES Reservation_buyuhe(reservation_id)
);

CREATE TABLE Concession_buyuhe (
    concession_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10,2)
);

CREATE TABLE Seat_buyuhe (
    seat_id SERIAL PRIMARY KEY,
    auditorium_id INTEGER,
    seatNumber VARCHAR(20),
    FOREIGN KEY (auditorium_id) REFERENCES Auditorium_buyuhe(auditorium_id)
);
