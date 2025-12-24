-- Sample Data for StaySmart

-- Hotels
INSERT INTO Hotel (name, location, contact_info)
VALUES ('StaySmart Downtown', 'Tunis, Tunisia', '+21612345678');

-- Rooms
INSERT INTO Rooms (Hotel_id, Room_number, Room_type, Price_per_night, amenities)
VALUES (1, '101', 'Single', 50.00, '{"WiFi": true, "MiniBar": true}');

-- Guests
INSERT INTO Guests (First_name, Last_name, Phone, email, address)
VALUES ('Donia', 'Mabrouk', '+21698765432', 'donia@example.com', 'Tunis, Tunisia');

-- Reservations
INSERT INTO Reservations (Guest_id, Room_id, Check_in_date, Check_out_date, Total_amount)
VALUES (1, 1, '2025-12-25', '2025-12-30', 250.00);

-- Payments
INSERT INTO Payments (Reservation_id, Payment_date, Payment_amount, Payment_method, Payment_status)
VALUES (1, NOW(), 250.00, 'credit card', 'paid');

-- Roles
INSERT INTO Roles (Role_name) VALUES ('Manager'), ('Receptionist');

-- Admins
INSERT INTO Admins (Name, Role_id, Contact_info) VALUES ('Khalil', 1, '+21611223344');

-- Hotel Services
INSERT INTO Hotel_Services (Reservation_id, Service_type, Service_cost)
VALUES (1, 'Room Service', 20.00);

-- Partnerships
INSERT INTO Partnerships (Partner_type, benefits)
VALUES ('Restaurant', '10% discount for hotel guests');

-- Room Amenities
INSERT INTO Room_Amenities (Room_id, Amenity_name)
VALUES (1, 'WiFi'), (1, 'MiniBar');
Hotel_id