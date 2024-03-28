-- Inserting data into the Customer table
INSERT INTO Customer_buyuhe (customer_id, name, email, phone) VALUES
    (1,'John Doe', 'john.doe@gmail.com', '123-456-7890'),
    (2,'Jane Smith', 'janesmith@ymail.com', '987-654-3210'),
    (3,'Alice Johnson', 'alicejson@icloud.com', '555-555-5555');

-- Inserting data into the Employee table
INSERT INTO Employee_buyuhe (employee_id,name, Position) VALUES
    (1,'Tom Thompson', 'Ticket Sales'),
    (2,'Sarah Johnson', 'Concession Stand');

-- Inserting data into the Movie table
INSERT INTO Movie_buyuhe (movie_id, title, genre, director) VALUES
    (1, 'The Matrix', 'Science Fiction', 'Lana Wachowski, Lilly Wachowski'),
    (2, 'Inception', 'Science Fiction', 'Christopher Nolan'),
    (3, 'The Godfather', 'Crime Drama', 'Francis Ford Coppola');

-- Inserting data into the Auditorium table
INSERT INTO Auditorium_buyuhe (auditorium_id, name, capacity) VALUES
    (1,'Auditorium 1', 100),
    (2,'Auditorium 2', 150),
    (3,'Auditorium 3', 200);

-- Inserting data into the Screening table
INSERT INTO Screening_buyuhe (screening_id,movie_id, auditorium_id, Time) VALUES
    (1,1, 1, '2024-03-21 19:00:00'),
    (2,2, 2, '2024-03-22 20:00:00'),
    (3,3, 3, '2024-03-23 18:00:00');

-- Inserting data into the Reservation table
INSERT INTO Reservation_buyuhe (reservation_id,customer_id, screening_id, seatNumber) VALUES
    (1,1, 1, 'A1'),
    (2,2, 2, 'B3'),
    (3,3, 3, 'C5');

-- Inserting data into the Ticket table
INSERT INTO Ticket_buyuhe (ticket_id,reservation_id, price) VALUES
    (1,1, 10.00),
    (2,2, 12.50),
    (3,3, 8.00);

-- Inserting data into the Concession table
INSERT INTO Concession_buyuhe (name, price) VALUES
    ('Popcorn', 5.00),
    ('Soda', 3.00),
    ('Candy', 2.50);

-- Inserting data into the Seat table
INSERT INTO Seat_buyuhe (auditorium_id, seatNumber) VALUES
    (1, 'A1'),
    (2, 'B3'),
    (3, 'C5');

select * from customer_buyuhe   
select * from employee_buyuhe 
select * from movie_buyuhe 
select * from auditorium_buyuhe
select * from screening_buyuhe
select * from reservation_buyuhe 
select * from ticket_buyuhe
select * from concession_buyuhe 
select * from Seat_buyuhe
