WITH CTE AS (
	SELECT * FROM gdp_df1 

	UNION ALL

	SELECT * FROM gdp_df2
)

SELECT 
	country,
	year,
	ROUND(
    (
        (CAST(gdp AS numeric) - LAG(CAST(gdp AS numeric)) OVER (PARTITION BY country ORDER BY year))
        / NULLIF(LAG(CAST(gdp AS numeric)) OVER (PARTITION BY country ORDER BY year), 0)
        * 100
    ), 2) AS GDP_growth_rate
FROM CTE