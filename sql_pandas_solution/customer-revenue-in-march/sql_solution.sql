SET search_path TO "customer_revenue_in_march";

SELECT 
    cust_id,
    SUM(total_order_cost) AS total_revenue
FROM 
    orders
WHERE 
    order_date >= '2019-03-01' 
    AND order_date < '2019-04-01'
GROUP BY 
    cust_id
ORDER BY 
    total_revenue DESC;
