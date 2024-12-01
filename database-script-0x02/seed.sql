-- Insert Sample Data into User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('1f4e6fa4-7c34-11ec-90d6-0242ac120003', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword1', '1234567890', 'guest', DEFAULT),
    ('2b5d7fa6-7c34-11ec-90d6-0242ac120003', 'Bob', 'Jones', 'bob@example.com', 'hashedpassword2', '0987654321', 'host', DEFAULT),
    ('3c6e8fa8-7c34-11ec-90d6-0242ac120003', 'Admin', 'User', 'admin@example.com', 'hashedpassword3', NULL, 'admin', DEFAULT);

-- Insert Sample Data into Property Table
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    ('a1b2c3d4-7c34-11ec-90d6-0242ac120003', '2b5d7fa6-7c34-11ec-90d6-0242ac120003', 'Ocean View Apartment', 'A beautiful apartment with an ocean view.', 'Miami, FL', 150.00, DEFAULT, DEFAULT),
    ('b2c3d4e5-7c34-11ec-90d6-0242ac120003', '2b5d7fa6-7c34-11ec-90d6-0242ac120003', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Denver, CO', 200.00, DEFAULT, DEFAULT);

-- Insert Sample Data into Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('111aaa22-7c34-11ec-90d6-0242ac120003', 'a1b2c3d4-7c34-11ec-90d6-0242ac120003', '1f4e6fa4-7c34-11ec-90d6-0242ac120003', '2024-12-01', '2024-12-05', 600.00, 'confirmed', DEFAULT),
    ('222bbb33-7c34-11ec-90d6-0242ac120003', 'b2c3d4e5-7c34-11ec-90d6-0242ac120003', '1f4e6fa4-7c34-11ec-90d6-0242ac120003', '2024-12-10', '2024-12-15', 1000.00, 'pending', DEFAULT);

-- Insert Sample Data into Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('aaaa1111-7c34-11ec-90d6-0242ac120003', '111aaa22-7c34-11ec-90d6-0242ac120003', 600.00, DEFAULT, 'credit_card');

-- Insert Sample Data into Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('review001-7c34-11ec-90d6-0242ac120003', 'a1b2c3d4-7c34-11ec-90d6-0242ac120003', '1f4e6fa4-7c34-11ec-90d6-0242ac120003', 5, 'Amazing place to stay!', DEFAULT);

-- Insert Sample Data into Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('msg001-7c34-11ec-90d6-0242ac120003', '1f4e6fa4-7c34-11ec-90d6-0242ac120003', '2b5d7fa6-7c34-11ec-90d6-0242ac120003', 'Hi, is the property available for these dates?', DEFAULT),
    ('msg002-7c34-11ec-90d6-0242ac120003', '2b5d7fa6-7c34-11ec-90d6-0242ac120003', '1f4e6fa4-7c34-11ec-90d6-0242ac120003', 'Yes, it is available!', DEFAULT);

