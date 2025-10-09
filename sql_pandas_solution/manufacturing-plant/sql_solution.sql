WITH ranked AS(
SELECT 
	p.category,
	p.product_name,
	s.revenue,
	DENSE_RANK() OVER (PARTITION BY p.category ORDER BY s.revenue DESC) AS "rank"
FROM manufacture_product p
JOIN manufacture_sales s ON p.product_id = s.product_id
)

SELECT r.category, r.product_name, r.revenue, r.rank
FROM ranked r
WHERE r."rank" <= 3
