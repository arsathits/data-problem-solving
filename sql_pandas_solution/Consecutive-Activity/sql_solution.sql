WITH ordered_activity AS (
    SELECT 
        user_id,
        date,
        -- Assign a sequence number per user ordered by date
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY date) AS rn
    FROM (
        SELECT DISTINCT user_id, date FROM ca_consecutive_act
    ) AS distinct_dates
),
grouped_dates AS (
    SELECT 
        user_id,
        date,
        -- Create a group identifier based on the difference between date and row number
        DATE - INTERVAL '1 day' * rn AS grp_key
    FROM ordered_activity
)
SELECT user_id
FROM grouped_dates
GROUP BY user_id, grp_key
HAVING COUNT(*) >= 3;
