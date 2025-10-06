WITH CTE AS (
    SELECT 
        TO_CHAR(created_at, 'YYYY-MM') AS year_month,
        SUM(value)::NUMERIC AS revenue
    FROM monthly_purchases
    GROUP BY year_month
)
SELECT 
    year_month,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY year_month)) 
         / LAG(revenue) OVER (ORDER BY year_month)) * 100,
        2
    ) AS percentage_change
FROM CTE
ORDER BY year_month;
