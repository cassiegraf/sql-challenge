departments
-
dept_no PK VARCHAR(25) #NOT NULL 
dept_name VARCHAR(35) #NOT NULL

#manager of each dept
dept_manager
-
dept_no VARCHAR(25) FK >- departments.dept_no #NOT NULL
emp_no PK INT FK - employees.emp_no #NOT NULL

#employee in each dept
dept_emp
-
emp_no PK INT FK - employees.emp_no #NOT NULL
dept_no VARCHAR(25) FK >- departments.dept_no #NOT NULL

employees
-
emp_no INT PK #NOT NULL
emp_title_id VARCHAR(25) FK >- titles.title_id #NOT NULL
birth_date VARCHAR(25) #NOT NULL
first_name VARCHAR(255) #NOT NULL
last_name VARCHAR(255) #NOT NULL
sex VARCHAR(25) #NOT NULL
hire_date VARCHAR(55) #NOT NULL

titles
-
title_id PK VARCHAR(25) #NOT NULL
title VARCHAR(255) #NOT NULL

salaries
-
emp_no INT PK FK - employees.emp_no #NOT NULL 
salary INT #NOT NULL

