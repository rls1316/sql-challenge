-- Data Engineering: Creating tables

-- Create Departments Table
CREATE TABLE Departments
(
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255) NOT NULL
);

-- View Departements Table
SELECT * FROM Departments

-- Create Titles Table
CREATE TABLE Titles
(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(255) NOT NULL,
	start_date DATE,
	end_date DATE
);

-- View Titles Table
SELECT * FROM Titles

-- Create Employees Table
CREATE TABLE Employees
(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE,
	FOREIGN KEY	(emp_title_id) REFERENCES Titles(title_id)
);

-- View Employees Table
SELECT * FROM Employees

-- Create Department_Employees
CREATE TABLE Department_Employees
(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- View Departments_Employees Table
SELECT * FROM Department_Employees

-- Create Department_Manager Table
CREATE TABLE Department_Manager
(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- View Department_Manager Table
SELECT * FROM Department_Manager

-- Create Salaries Table
CREATE TABLE Salaries
(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- View Salaries Table
SELECT * FROM Salaries