SET search_path TO top_percentile_fraud

WITH state_percentiles AS (
    SELECT
        state,
        PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY fraud_score) AS p95
    FROM fraud_score
    GROUP BY state
)
SELECT
    f.policy_num,
    f.state,
    f.claim_cost,
    f.fraud_score
FROM fraud_score f
JOIN state_percentiles sp
  ON f.state = sp.state
WHERE f.fraud_score >= sp.p95;