
-- CREATE DATABASE secondDB;

-- CREATE TABLE student (
--     name varchar,
--     website varchar,
--     github_username varchar,
--     points integer,
--     gender char(1),
--     cohort_start_date date,
--     graduated boolean
-- );

-- CREATE TABLE student2 (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     website varchar,
--     github_username varchar,
--     points integer,
--     gender char(1),
--     cohort_start_date date,
--     graduated boolean
-- );

-- INSERT INTO student2 VALUES (
--     DEFAULT, 'Daniel', 'DigitalCrafts.com', 'daniel1dolan', 5, 'M', '2020-01-13', FALSE
-- );

-- SELECT * FROM student2 WHERE name = 'Jaye' AND gender = 'M';


-- CREATE TABLE student3 (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     website varchar,
--     github_username varchar UNIQUE NOT NULL,
--     points integer DEFAULT 0 CHECK (points >= 0),
--     gender char(1),
--     cohort_start_date date NOT NULL,
--     graduated boolean DEFAULT FALSE
-- );

-- INSERT INTO student2 VALUES (
--     DEFAULT, 'Daniel', 'DigitalCrafts.com', 'daniel1dolan', 5, 'M', '2020-01-13', FALSE
-- );

-- UPDATE student2 SET points = 7 WHERE id = 2;

-- UPDATE student2 SET graduated = TRUE, points = 11 WHERE id = 1;

-- CREATE TABLE student4 (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     github_username varchar UNIQUE NOT NULL,
--     points integer DEFAULT 0 CHECK (points >= 0),
--     gender char(1),
--     cohort_start_date date,
--     graduated boolean DEFAULT FALSE
-- );

-- INSERT INTO student4 (name, github_username) VALUES ('Jason', 'JEphraim');

-- SELECT name FROM student2 WHERE github_username like '%bd%';

-- ALTER TABLE student2 DROP COLUMN website;

SELECT SUM(points) FROM student2;