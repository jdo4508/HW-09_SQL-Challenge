-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
	e.emp_no AS "Emp #",
	e.last_name AS "Emp Last Name", 
	e.first_name AS "Emp First Name", 
	e.gender AS "Gender",  
	s.salary AS "Salary"
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

-- List employees who were hired in 1986.
SELECT 
	emp_no AS "Emp #", 
	last_name  AS "Emp Last Name", 
	first_name AS "Emp First Name", 
	hire_date AS "Hire Date"
FROM employees 
WHERE date_part('year', hire_date) = 1986
ORDER BY hire_date ASC;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 
	d.dept_no AS "Dept #", 
	d.dept_name AS "Dept Name", 
	m.emp_no AS " Mgr Emp #", 
	e.first_name AS "Mgr First Name",
	e.last_name AS "Mgr Last Name", 
	m.from_date AS "Mgr From", 
	m.to_date AS "Mgr To" 
FROM departments d
JOIN dept_manager m
ON d.dept_no=m.dept_no
JOIN employees e
ON e.emp_no=m.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
	p.dept_name AS "Dept Name", 
	e.emp_no AS "Emp #", 
	e.last_name AS "Emp Last Name", 
	e.first_name AS "Emp First Name"
FROM employees e
JOIN dept_emp d
ON d.emp_no=e.emp_no
JOIN departments p
ON d.dept_no=p.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name LIKE 'Hercules' 
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
	e.emp_no AS "Emp #", 
	e.last_name AS "Emp Last Name", 
	e.first_name AS "Emp First Name", 
	d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no=de.emp_no
JOIN departments d 
ON d.dept_no=de.dept_no
WHERE d.dept_name LIKE 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	e.emp_no AS "Emp #", 
	e.last_name AS "Emp Last Name", 
	e.first_name AS "Emp First Name", 
	d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no=de.emp_no
JOIN departments d 
ON d.dept_no=de.dept_no
WHERE d.dept_name LIKE 'Sales' 
OR d.dept_name LIKE 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT 
	last_name AS "Emp Last Name", 
COUNT (*) AS frequency 
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;