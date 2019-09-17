Select
e.emp_no
,last_name
,first_name
,gender
,salary
From employees as e 

Join salaries as s on e.emp_no = s.emp_no