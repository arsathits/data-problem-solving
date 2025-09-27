WITH cte AS (
    SELECT 
        EXTRACT(YEAR FROM transaction_date) AS year,
        product_id,
        SUM(spend) AS curr_year_spend,
        LAG(SUM(spend)) OVER (
            PARTITION BY product_id 
            ORDER BY EXTRACT(YEAR FROM transaction_date)
        ) AS prev_year_spend
    FROM ga_user_transactions
    GROUP BY EXTRACT(YEAR FROM transaction_date), product_id
)

SELECT 
    year,
    product_id,
    curr_year_spend,
    prev_year_spend,
    ROUND(
        CASE 
            WHEN prev_year_spend = 0 OR prev_year_spend IS NULL THEN NULL
            ELSE ((curr_year_spend - prev_year_spend) / prev_year_spend) * 100
        END,
        2
    ) AS yoy_rate
FROM cte
ORDER BY product_id, year;
