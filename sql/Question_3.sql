Select
d.dept_no
,d.dept_name
,dm.emp_no
,e.last_name
,e.first_name
,de.from_date
,de.to_date
From dept_manager  as dm
Join departments as d on dm.dept_no = d.dept_no
Join employees as e on dm.emp_no = e.emp_no
Join dept_emp as de on dm.emp_no = de.emp_no