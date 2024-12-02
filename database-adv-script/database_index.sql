-- User Table: Indexes
CREATE UNIQUE INDEX idx_user_email ON User(email); -- Unique constraint on email
CREATE INDEX idx_user_id ON User(user_id); -- Optimized for joins

-- Booking Table: Indexes
CREATE INDEX idx_booking_property_id ON Booking(property_id); -- Join optimization
CREATE INDEX idx_booking_user_id ON Booking(user_id); -- Join optimization
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date); -- Range filtering

-- Property Table: Indexes
CREATE INDEX idx_property_id ON Property(property_id); -- Join optimization
CREATE INDEX idx_property_location ON Property(location); -- Filtering by location

