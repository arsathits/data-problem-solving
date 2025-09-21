-- Table creation for gdp_df1
CREATE TABLE gdp_df1 (
    Country TEXT,
    Year INTEGER,
    GDP DOUBLE PRECISION
);

-- Table creation for gdp_df2
CREATE TABLE gdp_df2 (
    Country TEXT,
    Year INTEGER,
    GDP DOUBLE PRECISION
);

-- Insert sample data into gdp_df1
INSERT INTO gdp_df1 (Country, Year, GDP) VALUES
('USA', 2018, 20544.34),
('USA', 2019, 21427.70),
('China', 2018, 13894.04);

-- Insert sample data into gdp_df2
INSERT INTO gdp_df2 (Country, Year, GDP) VALUES
('China', 2019, 14402.72),
('India', 2018, 2713.61),
('India', 2019, 2868.93);
