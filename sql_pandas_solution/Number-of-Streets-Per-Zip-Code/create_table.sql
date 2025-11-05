CREATE SCHEMA IF NOT EXISTS street_count_per_zip;
SET search_path TO street_count_per_zip;

DROP TABLE IF EXISTS sf_restaurant_health_violations;

CREATE TABLE sf_restaurant_health_violations (
    business_id BIGINT,
    business_name TEXT,
    business_address TEXT,
    business_city TEXT,
    business_state TEXT,
    business_postal_code DOUBLE PRECISION,
    business_latitude DOUBLE PRECISION,
    business_longitude DOUBLE PRECISION,
    business_location TEXT,
    business_phone_number TEXT,
    inspection_id TEXT,
    inspection_date DATE,
    inspection_score DOUBLE PRECISION,
    inspection_type TEXT,
    violation_id TEXT,
    violation_description TEXT,
    risk_category TEXT
);

COPY street_count_per_zip.sf_restaurant_health_violations(
    business_id,
    business_name,
    business_address,
    business_city,
    business_state,
    business_postal_code,
    business_latitude,
    business_longitude,
    business_location,
    business_phone_number,
    inspection_id,
    inspection_date,
    inspection_score,
    inspection_type,
    violation_id,
    violation_description,
    risk_category
)
FROM 'D:/data-problem-solving/sql_pandas_solution/Number-of-Streets-Per-Zip-Code/data.csv'
WITH (FORMAT csv, HEADER, DELIMITER ',', ENCODING 'UTF8', QUOTE '"', ESCAPE '''');

