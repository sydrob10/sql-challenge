select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager on
departments.dept_no = dept_manager.dept_no
inner join employees on
dept_manager.emp_no = employees.emp_no

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development'

select last_name, count(last_name)
from employees
group by last_name
order by count desc