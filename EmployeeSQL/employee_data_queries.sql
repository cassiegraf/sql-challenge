--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no AS "Employee Name", 
	employees.last_name AS "Employee Last Name", 
	employees.first_name AS "Employee First Name", 
	employees.sex AS "Employee Sex", 
	salaries.salary AS "Employee Salary"
FROM employees	
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no
;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name AS "First Name", 
	last_name AS "Last Name", 
	hire_date AS "Hire Date"
FROM employees
WHERE hire_date IN
(
	SELECT hire_date FROM employees
	WHERE hire_date LIKE '%86'
)
;

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
SELECT dept_manager.emp_no AS "Employee Number", 
	departments.dept_no AS "Department Number", 
	departments.dept_name AS "Department Name", 
	employees.first_name AS "Manager First Name", 
	employees.last_name AS "Manager Last Name"
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no
;

--List the department number for each employee along with that employee’s employee number, last name, 
--first name, and department name.
SELECT employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name",
	dept_emp.dept_no AS "Department Number",
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
;

--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name AS "First Name", 
	last_name AS "Last Name", 
	sex As "Sex"
FROM employees
WHERE first_name IN
	(
	SELECT first_name
	FROM employees
	WHERE first_name = 'Hercules'
	)	
;

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name", 
	dept_emp.dept_no AS "Department Number", 
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name IN
	(SELECT dept_name
	FROM departments
	WHERE dept_name = 'Sales')
;	

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name", 
	dept_emp.dept_no AS "Department Number", 
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name IN
	(SELECT dept_name
	FROM departments
	WHERE dept_name = 'Sales'
	OR dept_name = 'Development')
;	

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT last_name AS "Last Name", COUNT (employees) AS "Number of People with Last Name"
FROM employees
GROUP BY last_name
ORDER BY COUNT(employees) DESC
LIMIT 50
;