CREATE SCHEMA number_of_units_per_nationality;

DROP TABLE IF EXISTS number_of_units_per_nationality.airbnb_hosts;

CREATE TABLE number_of_units_per_nationality.airbnb_hosts (
    host_id TEXT,
    nationality TEXT,
    gender TEXT,
    age BIGINT
);

DROP TABLE IF EXISTS number_of_units_per_nationality.airbnb_units;

CREATE TABLE number_of_units_per_nationality.airbnb_units (
    host_id TEXT,
    unit_id TEXT,
    unit_type TEXT,
    n_beds BIGINT,
    n_bedrooms BIGINT,
    country TEXT,
    city TEXT
);

COPY number_of_units_per_nationality.airbnb_hosts(host_id, nationality, gender, age)
FROM 'D:/data-problem-solving/sql_pandas_solution/Number-Of-Units-Per-Nationality/airbnb_hosts.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY number_of_units_per_nationality.airbnb_units(host_id, unit_id, unit_type, n_beds, n_bedrooms, country, city)
FROM 'D:/data-problem-solving/sql_pandas_solution/Number-Of-Units-Per-Nationality/airbnb_units.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


