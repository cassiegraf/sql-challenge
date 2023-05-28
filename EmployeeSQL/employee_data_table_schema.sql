CREATE TABLE departments (
	dept_no VARCHAR(25) NOT NULL,
	dept_name VARCHAR(35) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(25) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);	

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR(25) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(25) NOT NULL,
	birth_date VARCHAR(25) NOT NULL,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(25) NOT NULL,
	hire_date VARCHAR(55) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE titles (
	title_id VARCHAR(25) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);	

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);