SET search_path TO "risky_projects_linkedin";

SELECT
    p.title AS project_name,
    p.budget,
    CEIL(SUM(e.salary * ((p.end_date - p.start_date)::float / 365.0))) AS total_expenses
FROM
    linkedin_projects p
JOIN
    linkedin_emp_projects ep ON p.id = ep.project_id
JOIN
    linkedin_employees e ON ep.emp_id = e.id
GROUP BY
    p.id, p.title, p.budget, p.start_date, p.end_date
HAVING
    CEIL(SUM(e.salary * ((p.end_date - p.start_date)::float / 365.0))) > p.budget
ORDER BY
    total_expenses DESC;
