--Module 9_SQL Challenge

--List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no,e.first_name,e.last_name,e.sex,s.salary
FROM "Salaries" s
INNER JOIN "Employees" e ON e.emp_no=s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT first_name,last_name,hire_date
FROM "Employees"
WHERE date_part('year',hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT d.dept_name,e.first_name, e.last_name,dm.emp_no
FROM "Departments" d
JOIN "Dept_Mgr" dm ON d.dept_no=dm.dept_no
JOIN "Employees" e on e.emp_no= dm.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_name,e.first_name, e.last_name,de.emp_no
FROM "Departments" d
JOIN "Dept_Emp" de ON d.dept_no=de.dept_no
JOIN "Employees" e on e.emp_no= de.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.first_name,e.last_name,e.emp_no
FROM "Departments" d
JOIN "Dept_Emp" de ON d.dept_no=de.dept_no
JOIN "Employees" e on e.emp_no= de.emp_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT d.dept_name,e.first_name,e.last_name,e.emp_no
FROM "Departments" d
JOIN "Dept_Emp" de ON d.dept_no=de.dept_no
JOIN "Employees" e on e.emp_no= de.emp_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development'
ORDER BY dept_name DESC;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

