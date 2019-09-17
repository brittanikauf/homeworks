Select
e.emp_no
,e.last_name
,e.first_name
,d.dept_name
From departments as d
join dept_emp as de on d.dept_no = de.dept_no
Join employees as e on de.emp_no = e.emp_no