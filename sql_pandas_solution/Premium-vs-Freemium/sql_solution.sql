SET search_path TO "Premium vs Freemium";

with cte as (
select 
    paying_customer,
    date,
    downloads
from ms_acc_dimension a
join ms_user_dimension u on a.acc_id = u.acc_id
join ms_download_facts d on u.user_id = d.user_id
)

select 
    date,
    SUM(CASE WHEN paying_customer = 'no' THEN downloads ELSE 0 END) AS non_paying,
    SUM(CASE WHEN paying_customer = 'yes' THEN downloads ELSE 0 END) AS paying
FROM cte
GROUP BY date
having SUM(CASE WHEN paying_customer = 'no' THEN downloads ELSE 0 END) > SUM(CASE WHEN paying_customer = 'yes' THEN downloads ELSE 0 END)
ORDER BY date;
