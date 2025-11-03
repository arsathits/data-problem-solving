SET search_path TO titanic_survivor_non_survivor;

select 
	survived,
	count(case when pclass = 1 then passengerid end) as first_class,
	count(case when pclass = 2 then passengerid end) as second_class,
	count(case when pclass = 3 then passengerid end) as third_class
from titanic_data
group by survived;
