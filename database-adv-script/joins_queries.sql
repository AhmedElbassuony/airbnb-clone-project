
-- Retrieve all bookings along with the user who made each booking:
SELECT 
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM Booking
INNER JOIN User
    ON Booking.user_id = User.user_id;


-- Retrieve all properties and their reviews, including properties with no reviews:
SELECT 
    Property.property_id,
    Property.name AS property_name,
    Property.location,
    Review.review_id,
    Review.user_id,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review
    ON Property.property_id = Review.property_id;


-- Retrieve all users and all bookings
SELECT 
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status
FROM User
FULL OUTER JOIN Booking
    ON User.user_id = Booking.user_id;


