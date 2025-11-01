-- ======================================
-- INDEXES FOR USER TABLE
-- ======================================
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- ======================================
-- INDEXES FOR PROPERTY TABLE
-- ======================================
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price_per_night);

-- ======================================
-- INDEXES FOR BOOKING TABLE
-- ======================================
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);




EXPLAIN 
SELECT 
    u.first_name, u.last_name, b.booking_id, b.start_date, b.end_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
WHERE b.start_date > '2025-01-01';
