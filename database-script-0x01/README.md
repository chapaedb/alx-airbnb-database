User Table

Stores user information.
Attributes like email are unique.
Includes role for user differentiation (guest, host, admin).
Property Table

Stores property details.
Linked to the User table through the host_id foreign key.
Booking Table

Tracks bookings for properties.
Links to both Property and User tables through foreign keys.
Payment Table

Records payments made for bookings.
Linked to the Booking table.
Review Table

Captures reviews for properties by users.
Includes a rating constraint (1–5).
Message Table

Supports messaging between users.
Both sender_id and recipient_id reference the User table.
