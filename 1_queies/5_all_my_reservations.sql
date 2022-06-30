SELECT reservations.id as id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM property_reviews
JOIN properties ON properties.id = property_id
JOIN reservations ON reservations.id = reservation_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date ASC
LIMIT 10;