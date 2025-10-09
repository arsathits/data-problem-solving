-- Table: ad_update_advertiser
CREATE TABLE ad_update_advertiser (
    user_id VARCHAR(50) PRIMARY KEY,
    status VARCHAR(20)
);

-- Sample Data for ad_update_advertiser
INSERT INTO ad_update_advertiser (user_id, status) VALUES
('bing', 'NEW'),
('yahoo', 'NEW'),
('alibaba', 'EXISTING');



-- Table: ad_update_daily_pay
CREATE TABLE ad_update_daily_pay (
    user_id VARCHAR(50),
    paid DECIMAL(10,2)
);

-- Sample Data for ad_update_daily_pay
INSERT INTO ad_update_daily_pay (user_id, paid) VALUES
('yahoo', 45.00),
('alibaba', 100.00),
('target', 13.00);
