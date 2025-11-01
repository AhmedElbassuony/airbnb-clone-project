-- Find all properties where the average rating is greater than 4.0 (Using Subquery)
SELECT 
    property_id,
    name,
    location,
    price_per_night
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);


-- Correlated Subquery – Find users who have made more than 3 bookings
SELECT 
    user_id,
    first_name,
    last_name,
    email
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id   -- correlated with outer query
) > 3;
