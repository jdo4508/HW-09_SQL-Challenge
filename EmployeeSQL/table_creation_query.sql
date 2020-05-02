DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments 
   (dept_no VARCHAR(30) ,
  dept_name VARCHAR(30));

CREATE TABLE dept_emp 
	 (emp_no INT,
	dept_no VARCHAR(30),
	from_date DATE,
	to_date DATE);
	
CREATE TABLE dept_manager
	(dept_no VARCHAR(30),
	emp_no INT,
	from_date DATE,
	to_date DATE);

CREATE TABLE employees
	 (emp_no INT,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR,
	hire_date DATE);
	
CREATE TABLE salaries
	 (emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE);
	
CREATE TABLE titles
	(emp_no INT,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE);