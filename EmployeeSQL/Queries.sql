-- Data Analysis

-- List the Employee Number, Last Name, First Name, Sex and Salary for each Employee

SELECT e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM Employees as e
INNER JOIN Salaries as s ON
s.emp_no = e.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,
last_name,
hire_date
FROM Employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986' 

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT m.dept_no,
d.dept_name,
m.emp_no as Managers_Employee_no,
e.last_name,
e.first_name
FROM Department_Manager as m
INNER JOIN Departments as D ON
d.dept_no = m.dept_no
INNER JOIN Employees as e ON
e.emp_no = m.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM Employees as e
INNER JOIN Department_Employees as de ON
de.emp_no = e.emp_no
INNER JOIN Departments as d ON
d.dept_no = de.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,
last_name,
sex
FROM Employees
WHERE first_name = 'Hercules' AND
	last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM Employees as e
INNER JOIN Department_Employees as de ON
de.emp_no = e.emp_no
INNER JOIN Departments as d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM Employees as e
INNER JOIN Department_Employees as de ON
de.emp_no = e.emp_no
INNER JOIN Departments as d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name,
COUNT (last_name) as Frequency
FROM Employees
GROUP BY last_name
ORDER BY Frequency DESC