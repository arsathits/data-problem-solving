WITH expanded AS (
    SELECT searches
    FROM msf_search_frequency
    CROSS JOIN generate_series(1, num_users)
),
ordered AS (
    SELECT 
        searches,
        ROW_NUMBER() OVER (ORDER BY searches) AS rn,
        COUNT(*) OVER () AS total_count
    FROM expanded
)
SELECT ROUND(AVG(searches)::numeric, 1) AS median
FROM ordered
WHERE rn IN ( (total_count + 1) / 2, (total_count + 2) / 2 );
