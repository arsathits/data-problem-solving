SELECT o.order_id AS "order id",
	CONCAT(first_name,' ',last_name) AS "customer name",
	c.email AS "customer email",
	p.product_name AS "product name",
	p.category AS "product category",
	o.order_date AS "order date"
FROM problem_2_crm_customers c
JOIN problem_2_crm_orders o ON c.customer_id = o.customer_id
JOIN problem_2_crm_products p ON o.product_id = p.product_id
ORDER BY o.order_id;