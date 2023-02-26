--employee and salary
select e.emp_no,
	   e.last_name,
	   e.first_name,
	   e.sex,
	   s.salary
from employees as e
LEFT JOIN salaries as s
	on (e.emp_no=s.emp_no);
	
--hire dates 1986
select first_name,
	   last_name,
	   hire_date
from employees 
where hire_date between '01-01-1986' and '12-31-1986';

--managers
select d.dept_no,
	   e.first_name,
	   e.last_name,
	   e.emp_no,
	   dept.dept_name
from dept_manager as d
left join employees as e
		on (d.emp_no=e.emp_no)
left join departments as dept
		on (d.dept_no=dept.dept_no);
	   
--dept numbers 
select e.emp_no,
	   e.first_name,
	   e.last_name,
	   d.dept_name,
	   d.dept_no
from employees as e
left join dept_emp 
		on (e.emp_no=dept_emp.emp_no)
left join departments as d 
		on (dept_emp.dept_no=d.dept_no)

--HERCULES, HERCULES
select first_name,
	   last_name,
	   sex
from employees 
where first_name = 'Hercules' and last_name like 'B%';

--Sales dept
select e.emp_no,
	   e.first_name,
	   e.last_name,
	   d.dept_name
from employees as e
left join dept_emp 
		on (e.emp_no=dept_emp.emp_no)
left join departments as d 
		on (dept_emp.dept_no=d.dept_no)
where dept_name = 'Sales'

--Sales and Development
select e.emp_no,
	   e.first_name,
	   e.last_name,
	   d.dept_name
from employees as e
left join dept_emp 
		on (e.emp_no=dept_emp.emp_no)
left join departments as d 
		on (dept_emp.dept_no=d.dept_no)
where dept_name = 'Sales' or dept_name = 'Development'

--Last name frequency
select (last_name), count(last_name)
from employees
group by last_name
order by count(last_name) desc;
