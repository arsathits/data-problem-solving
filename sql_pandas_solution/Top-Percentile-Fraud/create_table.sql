CREATE SCHEMA top_percentile_fraud;

CREATE TABLE top_percentile_fraud.fraud_score (
    policy_num  VARCHAR(20) PRIMARY KEY,
    state       VARCHAR(2) NOT NULL,
    claim_cost  NUMERIC(10,2) NOT NULL,
    fraud_score NUMERIC(5,2) NOT NULL
);
