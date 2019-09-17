Select
last_name
,count(*)
From employees
group by 1
Order by last_name desc