-- StaySmart: Hotel Reservation System
-- Create tables with constraints

-- Hotel Table
CREATE TABLE Hotel (
    Hotel_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    contact_info VARCHAR(50) NOT NULL
);

-- Rooms Table
CREATE TABLE Rooms (
    Room_id INT AUTO_INCREMENT PRIMARY KEY,
    Hotel_id INT,
    Room_number VARCHAR(10) NOT NULL,
    Room_type VARCHAR(50) NOT NULL,
    Price_per_night DECIMAL(10,2) NOT NULL CHECK (Price_per_night > 0),
    Is_available BOOLEAN DEFAULT TRUE,
    amenities TEXT,
    UNIQUE(Hotel_id, Room_number),
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id)
);

-- Guests Table
CREATE TABLE Guests (
    Guest_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255)
);

-- Reservations Table
CREATE TABLE Reservations (
    Reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    Guest_id INT,
    Room_id INT,
    Check_in_date DATE NOT NULL,
    Check_out_date DATE NOT NULL CHECK (Check_out_date > Check_in_date),
    Total_amount DECIMAL(10,2) NOT NULL CHECK (Total_amount >= 0),
    status VARCHAR(20) DEFAULT 'booked',
    FOREIGN KEY (Guest_id) REFERENCES Guests(Guest_id),
    FOREIGN KEY (Room_id) REFERENCES Rooms(Room_id)
);

-- Payments Table
CREATE TABLE Payments (
    Payment_id INT AUTO_INCREMENT PRIMARY KEY,
    Reservation_id INT,
    Payment_date DATETIME NOT NULL,
    Payment_amount DECIMAL(10,2) NOT NULL CHECK (Payment_amount >= 0),
    Payment_method VARCHAR(50) NOT NULL,
    Payment_status VARCHAR(20) DEFAULT 'pending',
    FOREIGN KEY (Reservation_id) REFERENCES Reservations(Reservation_id)
);

-- Hotel Services Table
CREATE TABLE Hotel_Services (
    Service_id INT AUTO_INCREMENT PRIMARY KEY,
    Reservation_id INT,
    Service_type VARCHAR(100) NOT NULL,
    Service_cost DECIMAL(10,2) NOT NULL CHECK (Service_cost >= 0),
    FOREIGN KEY (Reservation_id) REFERENCES Reservations(Reservation_id)
);

-- Roles Table
CREATE TABLE Roles (
    Role_id INT AUTO_INCREMENT PRIMARY KEY,
    Role_name VARCHAR(50) NOT NULL
);

-- Admins Table
CREATE TABLE Admins (
    Admin_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Role_id INT,
    Contact_info VARCHAR(50) NOT NULL,
    FOREIGN KEY (Role_id) REFERENCES Roles(Role_id)
);

-- Partnerships Table
CREATE TABLE Partnerships (
    Partnership_id INT AUTO_INCREMENT PRIMARY KEY,
    Partner_type VARCHAR(50) NOT NULL,
    benefits TEXT
);

-- Room Amenities Table
CREATE TABLE Room_Amenities (
    Amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    Room_id INT,
    Amenity_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (Room_id) REFERENCES Rooms(Room_id)
);
