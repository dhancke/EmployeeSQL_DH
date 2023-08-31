--DATA ANALYSIS

--1. List the employee number, last name, first name, sex and salary of each employee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
	INNER JOIN salaries as s 
		ON e.emp_no = s.emp_no;

-- 2. List the first name, last name and hire date for the employees who were hired in 1986

SELECT * FROM employees
	(first_name, last_name, hire_date) = hire_date == 1986;

	
--3. List the manager of each dept along with their dept. number, dept. name, emp. number, last name and first name
--IS THIS RIGHT?
--SEE DAY 3 example 1.5
SELECT dept_no, dept_name
FROM departments
WHERE dept_no IN
(
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN
	(
		SELECT emp_no
	           FROM employees 
	(emp_no, last_name, first_name);

--4. List dept no for each employee along with their employee no., last name, first name and dept name

SELECT dept_emp.dept_no, dept_emp.emp_no, departments.dept_no, departments.dept_name,
		employees.emp_no, employees.first_name, employees.last_name,
FROM dept_emp
		LEFT JOIN departments
		ON departments.dept_no = dept_emp.dept_no
		LEFT JOIN employees
		ON employees.emp_no = dept_emp.emp_no;
	
	
-- 5. List first name, last name and sex of each employee whose first name is Hercules and last name begins with a letter B

SELECT * FROM employees
	(first_name, last_name, , sex) first_name == Hercules
	AND last_name LIKE 'B%';
	
--6. List the frequency counts, in decending order, of all of the employee names (ie how many employees share the same name)

SELECT * FROM employees
	(last_name) decending = last_name;
	
--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT dept_emp.dept_no, dept_emp.emp_no, departments.dept_no, departments.dept_name,
		employees.emp_no, employees.first_name, employees.last_name,
FROM dept_emp
		LEFT JOIN departments
		ON departments.dept_no = dept_emp.dept_no == Sales AND Development
		LEFT JOIN employees
		ON employees.emp_no = dept_emp.emp_no

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)i
SELECT COUNT(DISTINCT last_name) 
FROM employees
	(last_name) decending;


		
