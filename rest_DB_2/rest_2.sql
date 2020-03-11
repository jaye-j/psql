-- CREATE TABLE restaurant(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     address VARCHAR (50),
--     category VARCHAR(20)
-- );
-- CREATE TABLE reviewer(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     email VARCHAR (50),
--     karma INTEGER CHECK (0 <= karma and karma <= 7)
-- );
-- CREATE TABLE reviews (
--     id SERIAL PRIMARY KEY,
--     reviewer_id INTEGER REFERENCES reviewer (id),
--     restaurant_id INTEGER REFERENCES restaurant (id),
--     stars INTEGER CHECK (1 <= stars and stars <= 5),
--     title VARCHAR(30),
--     review VARCHAR(500)
-- );

-- INSERT INTO restaurant VALUES
--     (DEFAULT, 'Burger King', '123 Main Street.', 'Fast Food'),
--     (DEFAULT, 'McDonalds', '245 South Street.', 'Fast Food'),
--     (DEFAULT, 'Hardees', '209 Woodland Road.', 'Fast Food'),
--     (DEFAULT, 'Wendys', '746 Main Street.', 'Fast Food'),
--     (DEFAULT, 'Witt Pit', '405 N South Street.', 'BBQ'),
--     (DEFAULT, 'Provinos', '305 Memorial Road.', 'Italian');
-- INSERT INTO reviewer VALUES
--     (DEFAULT, 'Austin', 'Austin@Austin.com', 7),
--     (DEFAULT, 'Jaye', 'Jaye@Jaye.com', 2),
--     (DEFAULT, 'Daniel', 'Daneil@Daniel.com', 3),
--     (DEFAULT, 'Mark', 'Mark@Mark.com', 5),
--     (DEFAULT, 'Alex', 'Alex@Alex.com', 6);
-- INSERT INTO reviews VALUES
--     (DEFAULT, 1, 1, 5, 'Its Burger king lmao', 'The title says it all.'),
--     (DEFAULT, 2, 5, 5, 'Pretty Gud', 'Pretty good quality BBQ for the price. I especially like how juicy and tender the moist beef brisket is.'),
--     (DEFAULT, 2, 3, 5, 'Exquisite Taste', 'Generic review.'),
--     (DEFAULT, 3, 4, 4, 'Decent', 'I especially like the spicy salted fish.'),
--     (DEFAULT, 2, 5, 5, 'Pinnacle of Fine Dining', 'Generic review.'),
--     (DEFAULT, 4, 6, 4, 'Good Deal', 'On Wednesdays they unlimited bread sticks.'),
--     (DEFAULT, 5, 6, 3, 'Okay', 'Its okay I guess.'),
--     (DEFAULT, 1, 4, 3, 'Decent But Pricy', 'The title says it all.'),
--     (DEFAULT, 4, 5, 4, 'Neat', 'ITS GUUD'),
--     (DEFAULT, 3, 1, 4, 'The Rising Tide', 'Generic review.');

-- #1
-- SELECT *
-- FROM reviews
-- WHERE reviews.restaurant_id = 1;

-- #2
-- SELECT *
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- WHERE restaurant.name = 'Burger King';

-- #3
-- SELECT *
-- FROM reviews
-- INNER JOIN reviewer
-- ON reviews.reviewer_id = reviewer.id
-- WHERE reviewer.name = 'Jaye';

-- #4
-- SELECT restaurant.name, reviews.review
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id;

-- #5
-- SELECT restaurant.name, AVG(reviews.stars)
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- GROUP BY
-- restaurant.id;

-- #6
-- SELECT restaurant.name, COUNT(reviews.review)
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- GROUP BY
-- restaurant.id;

-- #7
-- SELECT restaurant.name, reviews.review, reviewer.name
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- INNER JOIN reviewer
-- ON reviews.reviewer_id = reviewer.id;

-- #8
-- SELECT reviewer.name, AVG(reviews.stars)
-- FROM reviews
-- INNER JOIN reviewer
-- ON reviews.reviewer_id = reviewer.id
-- GROUP BY
-- reviewer.id;

-- #9
-- SELECT reviewer.name, MIN(reviews.stars)
-- FROM reviews
-- INNER JOIN reviewer
-- ON reviews.reviewer_id = reviewer.id
-- GROUP BY
-- reviewer.id;

-- #10
-- SELECT category, COUNT(name)
-- FROM restaurant
-- GROUP BY
-- restaurant.category;

-- #11
-- SELECT restaurant.name, reviews.stars
-- FROM reviews
-- INNER JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- WHERE stars = 5;

-- #12
SELECT restaurant.category, AVG(reviews.stars)
FROM reviews
INNER JOIN restaurant
ON reviews.restaurant_id = restaurant.id
GROUP BY restaurant.category;