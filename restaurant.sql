-- CREATE TABLE restaurant (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     distance integer DEFAULT 0 CHECK (distance >= 0),
--     stars integer CHECK (stars >= 0 AND stars <= 5),
--     category varchar,
--     favorite_dish varchar,
--     does_takeout boolean,
--     last_visit date
-- );

-- INSERT INTO restaurant VALUES
--     (DEFAULT, 'Whataburger', 2, 5, 'Fast Food', '#1 Whataburger', TRUE, '2019-08-06'),
--     (DEFAULT, 'Wendys', 10, 4, 'Fast Food', 'Baconator', TRUE, '2019-08-06'),
--     (DEFAULT, 'Cheesecake Factory', 3, 5, 'American/Dessert', 'New York Cheesecake', TRUE, '2017-01-10');

-- SELECT name FROM restaurant WHERE stars=5;

-- SELECT favorite_dish FROM restaurant WHERE stars=5;

-- SELECT id FROM restaurant WHERE name='Whataburger';

-- SELECT name FROM restaurant WHERE category='Fast Food';

-- SELECT name FROM restaurant WHERE does_takeout =TRUE;

-- SELECT name FROM restaurant WHERE does_takeout = TRUE AND category = 'Fast Food';

-- SELECT name FROM restaurant WHERE distance <= 2;

-- SELECT name FROM restaurant WHERE last_visit = '2020-03-02';

-- SELECT name FROM restaurant WHERE last_visit = '2020-03-02' AND stars = 5;