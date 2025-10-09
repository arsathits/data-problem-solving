WITH dept_avg AS (
    SELECT 
        e.department_id,
        AVG(s.amount) AS dept_avg_salary
    FROM sc_employee e
    JOIN sc_salary s 
        ON e.employee_id = s.employee_id
    WHERE TO_CHAR(s.payment_date, 'MM-YYYY') = '03-2024'
    GROUP BY e.department_id
),
company_avg AS (
    SELECT 
        AVG(s.amount) AS comp_avg_salary
    FROM sc_employee e
    JOIN sc_salary s 
        ON e.employee_id = s.employee_id
    WHERE TO_CHAR(s.payment_date, 'MM-YYYY') = '03-2024'
)
SELECT
    CASE
        WHEN d.dept_avg_salary > c.comp_avg_salary THEN 'higher'
        WHEN d.dept_avg_salary < c.comp_avg_salary THEN 'lower'
        ELSE 'same'
    END AS comparison,
    d.department_id,
    '03-2024' AS payment_month
FROM dept_avg d
CROSS JOIN company_avg c;
