SELECT
    EXTRACT(WEEK FROM date) AS week_number,
    ROUND(AVG(amount_spent)::numeric, 1) AS avg_amount_spent
FROM user_purchases
WHERE day_name = 'Friday'
  AND date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY week_number
ORDER BY week_number;
