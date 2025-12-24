# StaySmart: The Future of Hospitality
---

## Project Overview
StaySmart is a **smart hotel reservation system** designed to optimize hotel operations, reservations, guest interactions, and external partnerships. The project focuses on **database design and backend management**, using MySQL Workbench to implement a relational database model with proper normalization and constraints.

This repository contains:  
- SQL scripts to create tables and insert sample data  
- ER, EER, and Class Diagrams in PNG format  
- Detailed database structure and project documentation  

**Note:** A web interface will be developed in the future when web development is studied.

---

## Key Features
- Efficient room booking and reservation management  
- Guest data management and history tracking  
- Billing and multiple payment methods  
- Hotel services and special requests handling  
- External partnerships for enhanced guest experience  
- Admin and role-based access control

---

## Database Structure
- **Hotel**: Stores hotel information (name, location, contact info)  
- **Rooms**: Tracks room availability, type, pricing, and amenities  
- **Guests**: Stores guest details and contact information  
- **Reservations**: Links guests to rooms and tracks booking details  
- **Payments**: Manages payment transactions  
- **Hotel_Services**: Records extra services requested by guests  
- **Admins & Roles**: Staff management and role assignments  
- **Partnerships**: Tracks collaborations with local businesses  
- **Room_Amenities**: Lists available amenities per room  

---

## Diagrams

**ER Diagram:**  
![ER Diagram](Diagrams/ER_Diagram.png)  

**EER Diagram:**  
![EER Diagram](Diagrams/EER_Diagram.png)  

**Class Diagram:**  
![Class Diagram](Diagrams/Class_Diagram.png)  

---

## Class Diagram Overview (Optional)

| Class | Attributes | Methods (optional) |
|-------|-----------|------------------|
| Hotel | Hotel_id, name, location, contact_info | addRoom(), removeRoom() |
| Rooms | Room_id, Room_number, Room_type, Price_per_night, amenities, Is_available | checkAvailability() |
| Guests | Guest_id, First_name, Last_name, Phone, email, address | makeReservation() |
| Reservations | Reservation_id, Guest_id, Room_id, Check_in_date, Check_out_date, Total_amount, status | updateStatus() |
| Payments | Payment_id, Reservation_id, Payment_date, Payment_amount, Payment_method, Payment_status | processPayment() |
| Hotel_Services | Service_id, Reservation_id, Service_type, Service_cost | requestService() |
| Admins | Admin_id, Name, Role_id, Contact_info | manageSystem() |
| Roles | Role_id, Role_name | assignRole() |
| Partnerships | Partnership_id, Partner_type, benefits | addPartner() |
| Room_Amenities | Amenity_id, Room_id, Amenity_name | addAmenity() |

---

## How to Use

1. Open **MySQL Workbench**.  
2. Select or create a schema (e.g., `StaySmart`).  
3. Run `create_tables.sql` to create the database structure.  
4. Run `insert_sample_data.sql` to populate tables with sample data.  
5. Explore tables, relationships, and run queries to test the system.  

---

## Folder Structure

Stay Smart Hotel/
│
├─ SQL/
│ ├─ create_tables.sql
│ └─ insert_sample_data.sql
│
├─ Diagrams/
│ ├─ ER_Diagram.png
│ ├─ EER_Diagram.png
│ └─ Class_Diagram.png
│
└─ README.md


---

## Notes
- This project focuses on the **database design** for hotel management.  
- The web interface for the system will be developed in the future.  
- Designed to be **scalable, modular, and easily maintainable**.
