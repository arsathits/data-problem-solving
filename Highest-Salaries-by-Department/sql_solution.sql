WITH CTE AS(
	SELECT
		department,
		salary,
		DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
	FROM company_employees
)

SELECT 
	department,
	salary
FROM CTE
WHERE rn <= 3
ORDER BY department