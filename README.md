# sql-challenge
## Path to code:
 - main branch --> EmployeeSQL
    - within the EmployeeSQL file you will find:
        - ERD named "ERD_Employee_Data.png"
        - typed out schema for the ERD named "ERD_schema.sql"
        - code to create tables named "employee_data_table_schema.sql"
        - query code to answer all module questions named "employee_data_queries.sql"

### Received help from instructor for this section of code: last_name LIKE 'B%' (last line of code)
    Question: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    Answer:
    SELECT first_name, last_name, sex FROM employees
    WHERE
    first_name = 'Hercules'
    AND
    last_name LIKE 'B%';

