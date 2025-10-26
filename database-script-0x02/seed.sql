-- ======================================
-- INSERT INTO User
-- ======================================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('a1b2c3d4-e111-4a00-aaaa-111111111111', 'Ahmed', 'Elbassuony', 'ahmed@example.com', 'hashed_pw_ahmed', '+201000000001', 'admin', NOW()),
('b2c3d4e5-e222-4b00-bbbb-222222222222', 'Laila', 'Hassan', 'laila@example.com', 'hashed_pw_laila', '+201000000002', 'host', NOW()),
('c3d4e5f6-e333-4c00-cccc-333333333333', 'Omar', 'Ali', 'omar@example.com', 'hashed_pw_omar', '+201000000003', 'guest', NOW()),
('d4e5f6g7-e444-4d00-dddd-444444444444', 'Sara', 'Mahmoud', 'sara@example.com', 'hashed_pw_sara', '+201000000004', 'guest', NOW());
-- ======================================
-- INSERT INTO Property
-- ======================================
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
('p1a2b3c4-1111-4444-aaaa-555555555555', 'b2c3d4e5-e222-4b00-bbbb-222222222222', 
 'Cozy Apartment in Cairo', 'A comfortable 2-bedroom apartment in downtown Cairo.', 
 'Cairo, Egypt', 75.00, NOW(), NOW()),

('p2b3c4d5-2222-5555-bbbb-666666666666', 'b2c3d4e5-e222-4b00-bbbb-222222222222', 
 'Nile View Studio', 'Studio apartment with a stunning view of the Nile River.', 
 'Giza, Egypt', 120.00, NOW(), NOW());
-- ======================================
-- INSERT INTO Booking
-- ======================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('bk111111-aaaa-4444-cccc-111111111111', 'p1a2b3c4-1111-4444-aaaa-555555555555', 
 'c3d4e5f6-e333-4c00-cccc-333333333333', '2025-11-01', '2025-11-05', 300.00, 'confirmed', NOW()),

('bk222222-bbbb-5555-dddd-222222222222', 'p2b3c4d5-2222-5555-bbbb-666666666666', 
 'd4e5f6g7-e444-4d00-dddd-444444444444', '2025-12-10', '2025-12-13', 360.00, 'pending', NOW());
-- ======================================
-- INSERT INTO Payment
-- ======================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay11111-aaaa-4444-bbbb-777777777777', 'bk111111-aaaa-4444-cccc-111111111111', 
 300.00, NOW(), 'credit_card'),

('pay22222-bbbb-5555-cccc-888888888888', 'bk222222-bbbb-5555-dddd-222222222222', 
 360.00, NOW(), 'paypal');
-- ======================================
-- INSERT INTO Review
-- ======================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('r1111111-aaaa-4444-bbbb-999999999999', 'p1a2b3c4-1111-4444-aaaa-555555555555',
 'c3d4e5f6-e333-4c00-cccc-333333333333', 5, 'Amazing place! Very clean and great location.', NOW()),

('r2222222-bbbb-5555-cccc-000000000000', 'p2b3c4d5-2222-5555-bbbb-666666666666',
 'd4e5f6g7-e444-4d00-dddd-444444444444', 4, 'Nice view and comfortable stay.', NOW());
-- ======================================
-- INSERT INTO Message
-- ======================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('m1111111-aaaa-4444-bbbb-121212121212', 
 'c3d4e5f6-e333-4c00-cccc-333333333333', 
 'b2c3d4e5-e222-4b00-bbbb-222222222222', 
 'Hi Laila, is the apartment available on November 1st?', NOW()),

('m2222222-bbbb-5555-cccc-131313131313', 
 'b2c3d4e5-e222-4b00-bbbb-222222222222', 
 'c3d4e5f6-e333-4c00-cccc-333333333333', 
 'Yes, it’s available! I’ll confirm your booking shortly.', NOW());
