Select
de.emp_no
,last_name
,first_name
,de.dept_no
From departments d
join dept_emp as de on d.dept_no = de.dept_no
Join employees as e on de.emp_no = e.emp_no
Where dept_name = 'Sales'
Or dept_name = 'Development'