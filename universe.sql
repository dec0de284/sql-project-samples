CREATE TABLE
    moon (
        moon_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        orbits_on TEXT,
        habitable BOOLEAN,
        within_range BOOLEAN,
        diameter NUMERIC,
        rings INT
    );

CREATE TABLE
    planet (
        planet_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        moon_id INT REFERENCES moon (moon_id),
        orbits_on TEXT,
        habitable BOOLEAN,
        with_rings BOOLEAN,
        diameter NUMERIC,
        moon_count INT
    );

CREATE TABLE
    star (
        star_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        planet_id INT REFERENCES planet (planet_id),
        orbits_on TEXT,
        habitable BOOLEAN,
        with_rings BOOLEAN,
        diameter NUMERIC,
        planet_count INT
    );

CREATE TABLE
    galaxy (
        galaxy_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        star_id INT REFERENCES star (star_id),
        orbits_on TEXT,
        diameter NUMERIC,
        star_count INT
    );

CREATE TABLE
    galaxy_cluster (
        galaxy_cluster_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        galaxy_id INT REFERENCES galaxy (galaxy_id),
        diameter NUMERIC,
        galaxies_count INT
    );

INSERT INTO
    moon (
        name,
        orbits_on,
        habitable,
        within_range,
        diameter,
        rings
    )
VALUES
    ('YRVgI', 'IkHIV', FALSE, TRUE, 625.43, 2),
    ('pfL6a', 'CwksL', TRUE, FALSE, 923.29, 3),
    ('GniPE', 'sjkpy', TRUE, FALSE, 412.15, 2),
    ('hLgv9', 'LsYje', FALSE, TRUE, 814.75, 0),
    ('PeivF', 'eCVe5', FALSE, FALSE, 423.29, 0),
    ('5iveR', 'WiALy', FALSE, FALSE, 415.10, 2),
    ('A5dp6', 'eCVe5', TRUE, TRUE, 141.88, 0),
    ('loikN', 'kc3MO', TRUE, FALSE, 172.21, 1),
    ('OgSSb', '8JV7b', FALSE, FALSE, 957.31, 1),
    ('a5Npa', 'kc3MO', TRUE, TRUE, 140.39, 0),
    ('7sBd6', 'uTKgR', FALSE, TRUE, 271.62, 0),
    ('vfzFE', 't7j7C', FALSE, TRUE, 423.14, 3),
    ('YA3G7', 'LsYje', FALSE, FALSE, 479.71, 0),
    ('JM71L', 'CwksL', TRUE, FALSE, 510.54, 0),
    ('br9mC', 'LsYje', TRUE, TRUE, 225, 0),
    ('RyfEf', 'N2wS3', TRUE, FALSE, 418.28, 0),
    ('zT6oR', 'kc3MO', FALSE, FALSE, 959.92, 0),
    ('5gFDg', 'eCVe5', TRUE, FALSE, 561.98, 3),
    ('H7nUg', 'CwksL', TRUE, FALSE, 239.86, 1),
    ('yhw9K', '8JV7b', FALSE, FALSE, 174.77, 2)
SELECT
    *
FROM
    moon;