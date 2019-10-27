/* 1 Find the details of each employee: employee number, last name, first name, gender, and salary. */
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, 
	   salaries.salary
from salaries
inner join employees on employees.emp_no = salaries.emp_no
order by salary desc 

/* 2 Find the details of each employees: hired in the year 1986 */
select last_name, first_name, hire_date 
from employees
where hire_date like '1986%' 

/* 3 Find the details of each info: department #, department name, manager employee #, last name, first name, start date and end date */
select departments.dept_no, departments.dept_name, 
	   dept_manager.emp_no, dept_manager.to_date, 
	   employees.last_name, employees.first_name, employees.hire_date
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no 
inner join employees on employees.emp_no = dept_manager.emp_no 
where to_date like '9999-%' 

/* 4 Find the details of each info: department of each employee and the employee#, last name, first name, and department name */ 
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees 
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
order by departments.dept_name 

/* 5 Find Hercules B */ 
select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%' 
order by last_name asc

/* 6 Find employees in sales department and show emp#, first and last name, and department name */ 
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name  
from employees 
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
order by last_name asc 

/* 7 Find employees in sales and development department and show emp#, first and last name, and department name */
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name  
from employees 
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
order by dept_name, last_name asc 

/* 8 Find desc order of most common emp last names */
select last_name, count (last_name) as frequency  
from employees 
group by last_name
order by count(last_name) desc 