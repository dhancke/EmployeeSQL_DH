-- Creating tables for Pewlett Hackard

CREATE TABLE departments(
	dept_no VARCHAR (8) NOT NULL,
	dept_name VARCHAR (20) NOT NULL
	--PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL		
	--PRIMARY KEY (emp_no), 
	--FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE titles(
	emp_title_id VARCHAR (6)NOT NULL,
	title VARCHAR (20) NOT NULL
	--PRIMARY KEY (emp_title_ID)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
	--FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL
	--FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no),
	--FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

--DOES NOT WANT TO UPLOAD DATA INTO TABLE BECAUSE OF FORMAT OF DATES
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_ID VARCHAR (20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR (20) NOT NULL,
	hire_date DATE NOT NULL
	--FOREIGN KEY (emp_title_ID) REFERENCES titles (emp_title_ID),
	--FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

SELECT * from departments;
SELECT * from dept_emp;
SELECT * from titles;
SELECT * from salaries;
SELECT * from dept_manager;
SELECT * from employees;

