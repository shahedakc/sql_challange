drop table departments; 
drop table employee; 

create table departments( dept_no  VARCHAR PRIMARY KEY, 
						 dept_name VARCHAR NOT NULL); 
drop table dept_emp 
create table dept_emp(emp_no INT NOT NULL,
					  dept_no VARCHAR NOT NULL,
					  from_date VARCHAR NOT NULL,
					  to_date VARCHAR NOT NULL,
					  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
					  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)); 

create table dept_manager(dept_no VARCHAR NOT NULL,
						  emp_no INT NOT NULL,
						  from_date VARCHAR NOT NULL,
						  to_date VARCHAR NOT NULL,
						  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
						  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)); 

create table employees(emp_no INT PRIMARY KEY,
					   birth_date VARCHAR NOT NULL,
					   first_name VARCHAR NOT NULL,
					   last_name VARCHAR NOT NULL,
					   gender VARCHAR NOT NULL,
					   hire_date VARCHAR NOT NULL); 

create table salaries(emp_no INT NOT NULL,
					  salary INT NOT NULL,
					  from_date VARCHAR NOT NULL,
					  to_date VARCHAR NOT NULL,
					  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)); 
drop table titles
create table titles(emp_no INT NOT NULL,
					title VARCHAR NOT NULL,
					from_date VARCHAR NOT NULL,
					to_date VARCHAR NOT NULL,
					FOREIGN KEY (emp_no) REFERENCES employees(emp_no)); 
					
					
					